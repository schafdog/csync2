#include "test_logging.hpp"

int main() {
    const char* msg = nullptr;
    int code = 42;

    log_safe("Error {}: {}", code, msg);  // ✅ prints: Error 42: (null)

    const char* msg2 = "File not found";
    log_safe("Warning: {}", msg2);        // ✅ prints: Warning: File not found
}
