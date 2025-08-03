#pragma once
#include <format>
#include <string>
#include <iostream>
#include <variant>

inline const char* safe_str(const char* s) {
    return s ? s : "(null)";
}


// Sanitization: wrap const char* to check for null
inline const char* sanitize(const char* s) { return safe_str(s); }

// Fallback: leave other types unchanged
template <typename T>
constexpr T&& sanitize(T&& val) { return std::forward<T>(val); }

template <typename... Args>
void log_safe(const std::string& format_str, Args&&... args) {
    try {
//      std::string msg = std::vformat(format_str, std::make_format_args(sanitize(std::forward<Args>(args))...));
        auto sanitized = std::make_tuple(sanitize(std::forward<Args>(args))...);
        std::string msg = std::apply(
            [&](auto&&... sa) {
                return std::vformat(format_str, std::make_format_args(sa...));
            },
            sanitized
        );	
        std::cout << msg << '\n';
    } catch (const std::format_error& e) {
        std::cerr << "Format error: " << e.what() << '\n';
    }
}
