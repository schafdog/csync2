#include <iostream>
#include <stdexcept>

class DatabaseError : public std::runtime_error {
public:
    explicit DatabaseError(const std::string& message) : std::runtime_error(message) {}
};

// Simple test to verify error handling is working
int main() {
    try {
        throw DatabaseError("Test error");
    } catch (const DatabaseError& e) {
        std::cout << "PASS: Caught DatabaseError: " << e.what() << std::endl;
        return 0;
    }
    std::cout << "FAIL: No exception thrown" << std::endl;
    return 1;
}