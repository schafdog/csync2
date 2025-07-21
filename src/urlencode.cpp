/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2004, 2005  Clifford Wolf <clifford@clifford.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "csync2.hpp"
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string>
#include <sstream>
#include <iomanip>
#include <cctype>
#include "urlencode.hpp"

#define RINGBUFF_LEN 10000

static char *ringbuff[RINGBUFF_LEN];
static int ringbuff_counter = 0;

// Characters that need to be URL encoded
static const std::string badchars = "\001\002\003\004\005\006\007\010\011\012\013\014\015\016\017\020"
								   "\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037\040"
								   "\177\"'%$:|";

std::string& UrlEncoder::operator()(const std::string& input) {
    std::ostringstream encoded;
    encoded << std::hex << std::uppercase << std::setfill('0');

    for (char c : input) {
        if (badchars.find(c) != std::string::npos) {
            encoded << '%' << std::setw(2) << static_cast<int>(static_cast<unsigned char>(c));
        } else {
            encoded << c;
        }
    }
    encoded_strings.emplace_back(encoded.str());
    return encoded_strings.back();
}

std::string&UrlEncoder::operator()(const char* input) {
    if (!input) {
        input = "";
    }
    return operator()(std::string(input));
}

std::string& UrlDecoder::operator()(const std::string& input) {
    std::ostringstream decoded;

    for (size_t i = 0; i < input.length(); ++i) {
        if (input[i] == '%' && i + 2 < input.length() &&
            std::isxdigit(input[i + 1]) && std::isxdigit(input[i + 2])) {

            std::string hex = input.substr(i + 1, 2);
            char decodedChar = static_cast<char>(std::stoul(hex, nullptr, 16));
            decoded << decodedChar;
            i += 2;
        } else {
            decoded << input[i];
        }
    }
    decoded_strings.emplace_back(decoded.str());
    return decoded_strings.back();
}

std::string& UrlDecoder::operator()(const char* input)  {
    if (!input) {
        return operator()(std::string(""));
    }
    return operator()(std::string(input));
}

UrlCodec url_codec;

// Legacy C-style functions (deprecated) - maintain compatibility
const char* url_encode(const char *in) {
	char *out;
	int i, j, k, len;

	for (i = len = 0; in[i]; i++, len++)
		for (j = 0; badchars[j]; j++)
			if (in[i] == badchars[j]) {
				len += 2;
				break;
			}

	out = static_cast<char*>(malloc(len + 1));

	for (i = k = 0; in[i]; i++) {
		for (j = 0; badchars.c_str()[j]; j++)
			if (in[i] == badchars[j])
				break;
		if (badchars[j]) {
			snprintf(out + k, 4, "%%%02X", in[i]);
			k += 3;
		} else
			out[k++] = in[i];
	}
	assert(k == len);
	out[k] = 0;

	if (ringbuff[ringbuff_counter])
		free(ringbuff[ringbuff_counter]);
	ringbuff[ringbuff_counter++] = out;
	if (ringbuff_counter == RINGBUFF_LEN)
		ringbuff_counter = 0;
	return out;
}
const char *url_encode(peername_p in) {
	return url_encode(in.c_str());
}

const char* url_decode(const char *in) {
	char *out, num[3] = "XX";
	int i, k, len;

	if (in == NULL)
		return strdup("");

	for (i = len = 0; in[i]; i++, len++)
		if (in[i] == '%' && in[i + 1] && in[i + 2])
			i += 2;

	out = static_cast<char*>(malloc(len + 1));

	for (i = k = 0; in[i]; i++)
		if (in[i] == '%' && in[i + 1] && in[i + 2]) {
			num[0] = in[++i];
			num[1] = in[++i];
			out[k++] = strtol(num, 0, 16);
		} else
			out[k++] = in[i];
	assert(k == len);
	out[k] = 0;

	if (ringbuff[ringbuff_counter])
		free(ringbuff[ringbuff_counter]);
	ringbuff[ringbuff_counter++] = out;
	if (ringbuff_counter == RINGBUFF_LEN)
		ringbuff_counter = 0;

	return out;
}
const char *url_decode(peername_p in) {
	return url_decode(in.c_str());
}
