#include <string>
#include <iostream>
#include <cassert>

// Forward declaration to avoid including full csync2.hpp
typedef const std::string peername_p;

// Include the URL encode classes
class UrlEncoder {
public:
    std::string operator()(const std::string& input) const;
    std::string operator()(const char* input) const;
};

class UrlDecoder {
public:
    std::string operator()(const std::string& input) const;
    std::string operator()(const char* input) const;
};

class UrlCodec {
public:
    UrlEncoder encode;
    UrlDecoder decode;
};

int main() {
    // Test basic encoding
    std::string input = "hello world";
    std::string expected_encoded = "hello%20world";
    std::string actual_encoded = url_codec.encode(input);
    
    std::cout << "Testing encoding:" << std::endl;
    std::cout << "Input: '" << input << "'" << std::endl;
    std::cout << "Expected: '" << expected_encoded << "'" << std::endl;
    std::cout << "Actual: '" << actual_encoded << "'" << std::endl;
    assert(actual_encoded == expected_encoded);
    std::cout << "✓ Encoding test passed" << std::endl;
    
    // Test basic decoding
    std::string decoded = url_codec.decode(actual_encoded);
    std::cout << "\nTesting decoding:" << std::endl;
    std::cout << "Encoded: '" << actual_encoded << "'" << std::endl;
    std::cout << "Decoded: '" << decoded << "'" << std::endl;
    assert(decoded == input);
    std::cout << "✓ Decoding test passed" << std::endl;
    
    // Test special characters
    std::string special = "file:name$with%special&chars";
    std::string special_encoded = url_codec.encode(special);
    std::string special_decoded = url_codec.decode(special_encoded);
    std::cout << "\nTesting special characters:" << std::endl;
    std::cout << "Original: '" << special << "'" << std::endl;
    std::cout << "Encoded: '" << special_encoded << "'" << std::endl;
    std::cout << "Decoded: '" << special_decoded << "'" << std::endl;
    assert(special_decoded == special);
    std::cout << "✓ Special characters test passed" << std::endl;
    
    // Test C-style compatibility
    const char* c_input = "test string";
    std::string c_encoded = url_codec.encode(c_input);
    std::string c_decoded = url_codec.decode(c_encoded.c_str());
    std::cout << "\nTesting C-style interface:" << std::endl;
    std::cout << "Original: '" << c_input << "'" << std::endl;
    std::cout << "Encoded: '" << c_encoded << "'" << std::endl;
    std::cout << "Decoded: '" << c_decoded << "'" << std::endl;
    assert(c_decoded == std::string(c_input));
    std::cout << "✓ C-style interface test passed" << std::endl;
    
    // Test null input
    std::string null_encoded = url_codec.encode(nullptr);
    assert(null_encoded.empty());
    std::string null_decoded = url_codec.decode(nullptr);
    assert(null_decoded.empty());
    std::cout << "\n✓ Null input test passed" << std::endl;
    
    std::cout << "\n🎉 All tests passed!" << std::endl;
    return 0;
}