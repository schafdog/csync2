#include <string>
#include <iostream>
#include <cassert>
#include <sstream>
#include <iomanip>
#include <cctype>

// Simple implementation for testing
class UrlEncoder {
private:
    static const std::string badchars;
    
public:
    std::string operator()(const std::string& input) const {
        std::ostringstream encoded;
        encoded << std::hex << std::uppercase << std::setfill('0');
        
        for (char c : input) {
            if (badchars.find(c) != std::string::npos) {
                encoded << '%' << std::setw(2) << static_cast<int>(static_cast<unsigned char>(c));
            } else {
                encoded << c;
            }
        }
        
        return encoded.str();
    }
    
    std::string operator()(const char* input) const {
        if (!input) {
            return "";
        }
        return operator()(std::string(input));
    }
};

class UrlDecoder {
public:
    std::string operator()(const std::string& input) const {
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
        
        return decoded.str();
    }
    
    std::string operator()(const char* input) const {
        if (!input) {
            return "";
        }
        return operator()(std::string(input));
    }
};

class UrlCodec {
public:
    UrlEncoder encode;
    UrlDecoder decode;
};

// Characters that need to be URL encoded (matching the original)
const std::string UrlEncoder::badchars = "\001\002\003\004\005\006\007\010\011\012\013\014\015\016\017\020"
                                         "\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037\040"
                                         "\177\"'%$:|";

UrlCodec url_codec;

int main() {
    std::cout << "Testing modern C++ URL codec with RAII and operator() overloading..." << std::endl;
    
    // Test basic encoding
    std::string input = "hello world";
    std::string expected_encoded = "hello%20world";
    std::string actual_encoded = url_codec.encode(input);
    
    std::cout << "\n1. Testing basic encoding:" << std::endl;
    std::cout << "   Input: '" << input << "'" << std::endl;
    std::cout << "   Expected: '" << expected_encoded << "'" << std::endl;
    std::cout << "   Actual: '" << actual_encoded << "'" << std::endl;
    assert(actual_encoded == expected_encoded);
    std::cout << "   ✓ PASSED" << std::endl;
    
    // Test basic decoding
    std::string decoded = url_codec.decode(actual_encoded);
    std::cout << "\n2. Testing basic decoding:" << std::endl;
    std::cout << "   Encoded: '" << actual_encoded << "'" << std::endl;
    std::cout << "   Decoded: '" << decoded << "'" << std::endl;
    assert(decoded == input);
    std::cout << "   ✓ PASSED" << std::endl;
    
    // Test special characters
    std::string special = "file:name$with%special&chars";
    std::string special_encoded = url_codec.encode(special);
    std::string special_decoded = url_codec.decode(special_encoded);
    std::cout << "\n3. Testing special characters:" << std::endl;
    std::cout << "   Original: '" << special << "'" << std::endl;
    std::cout << "   Encoded: '" << special_encoded << "'" << std::endl;
    std::cout << "   Decoded: '" << special_decoded << "'" << std::endl;
    assert(special_decoded == special);
    std::cout << "   ✓ PASSED" << std::endl;
    
    // Test C-style compatibility
    const char* c_input = "test string";
    std::string c_encoded = url_codec.encode(c_input);
    std::string c_decoded = url_codec.decode(c_encoded.c_str());
    std::cout << "\n4. Testing C-style interface:" << std::endl;
    std::cout << "   Original: '" << c_input << "'" << std::endl;
    std::cout << "   Encoded: '" << c_encoded << "'" << std::endl;
    std::cout << "   Decoded: '" << c_decoded << "'" << std::endl;
    assert(c_decoded == std::string(c_input));
    std::cout << "   ✓ PASSED" << std::endl;
    
    // Test null input
    std::string null_encoded = url_codec.encode(nullptr);
    assert(null_encoded.empty());
    std::string null_decoded = url_codec.decode(nullptr);
    assert(null_decoded.empty());
    std::cout << "\n5. Testing null input handling:" << std::endl;
    std::cout << "   ✓ PASSED" << std::endl;
    
    // Test round-trip with file paths (common use case in csync2)
    std::string filepath = "/path/to/file with spaces.txt";
    std::string filepath_encoded = url_codec.encode(filepath);
    std::string filepath_decoded = url_codec.decode(filepath_encoded);
    std::cout << "\n6. Testing file path round-trip:" << std::endl;
    std::cout << "   Original: '" << filepath << "'" << std::endl;
    std::cout << "   Encoded: '" << filepath_encoded << "'" << std::endl;
    std::cout << "   Decoded: '" << filepath_decoded << "'" << std::endl;
    assert(filepath_decoded == filepath);
    std::cout << "   ✓ PASSED" << std::endl;
    
    std::cout << "\n🎉 All tests passed!" << std::endl;
    std::cout << "\nKey features demonstrated:" << std::endl;
    std::cout << "• RAII pattern - automatic memory management with std::string" << std::endl;
    std::cout << "• Operator() overloading - clean functional interface" << std::endl;
    std::cout << "• Type safety - no manual malloc/free or buffer overflows" << std::endl;
    std::cout << "• Exception safety - automatic cleanup on errors" << std::endl;
    std::cout << "• Thread safety - no global state or ring buffers" << std::endl;
    
    return 0;
}