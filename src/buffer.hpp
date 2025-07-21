#ifndef BUFFER_HPP
#define BUFFER_HPP

#include <vector>
#include <string>
#include <memory>
#include <cstring>

// filename_p is defined in csync2.hpp as const std::string
// We don't redeclare it here to avoid conflicts

namespace csync2 {

/**
 * Modern C++ Buffer class using RAII
 * Replaces the old C-style BUF_P with automatic memory management
 */
class Buffer {
private:
    std::vector<std::unique_ptr<char, decltype(&std::free)>> strings_;

public:
    // Constructor with optional initial size
    explicit Buffer(size_t initial_capacity = 100) {
        strings_.reserve(initial_capacity);
    }

    // Destructor automatically cleans up (RAII)
    ~Buffer() = default;

    // No copy constructor/assignment (move-only for safety)
    Buffer(const Buffer&) = delete;
    Buffer& operator=(const Buffer&) = delete;

    // Move constructor and assignment
    Buffer(Buffer&&) = default;
    Buffer& operator=(Buffer&&) = default;

    /**
     * Allocate memory and track it in the buffer
     * @param length Size to allocate
     * @return Pointer to allocated memory (automatically freed on destruction)
     */
    char* malloc(size_t length) {
        char* ptr = static_cast<char*>(std::malloc(length));
        if (!ptr) {
            throw std::bad_alloc();
        }
        ptr[0] = '\0'; // Initialize to empty string
        strings_.emplace_back(ptr, &std::free);
        return ptr;
    }

    /**
     * Duplicate a C string and track it in the buffer
     * @param str String to duplicate
     * @return Pointer to duplicated string (automatically freed on destruction)
     */
    char* strdup(const char* str) {
        if (!str) {
            return nullptr;
        }
        char* ptr = ::strdup(str);
        if (!ptr) {
            throw std::bad_alloc();
        }
        strings_.emplace_back(ptr, &std::free);
        return ptr;
    }

    /**
     * Duplicate a std::string and track it in the buffer
     * @param str String to duplicate
     * @return Pointer to duplicated string (automatically freed on destruction)
     */
    char* strdup(const std::string& str) {
        return strdup(str.c_str());
    }

    // filename_p overload removed - use std::string directly

    /**
     * Create a quoted string and track it in the buffer
     * @param str String to quote
     * @return Pointer to quoted string (automatically freed on destruction)
     */
    char* quote(const char* str) {
        if (!str) {
            return strdup("NULL");
        }

        size_t len = std::strlen(str);
        char* ptr = static_cast<char*>(std::malloc(len + 3)); // +3 for quotes and null terminator
        if (!ptr) {
            throw std::bad_alloc();
        }

        std::sprintf(ptr, "'%s'", str);
        strings_.emplace_back(ptr, &std::free);
        return ptr;
    }

    /**
     * Create a quoted string from std::string and track it in the buffer
     * @param str String to quote
     * @return Pointer to quoted string (automatically freed on destruction)
     */
    char* quote(const std::string& str) {
        return quote(str.c_str());
    }

    // filename_p overload removed - use std::string directly

    /**
     * Add an existing dynamically allocated string to the buffer
     * The buffer takes ownership and will free it on destruction
     * @param str Pointer to dynamically allocated string
     */
    void add(char* str) {
        if (str) {
            strings_.emplace_back(str, &std::free);
        }
    }

    /**
     * Get the number of strings stored in the buffer
     * @return Number of strings
     */
    size_t count() const {
        return strings_.size();
    }

    /**
     * Get a string by index
     * @param index Index of the string
     * @return Pointer to string or nullptr if index is out of bounds
     */
    char* get(size_t index) const {
        if (index < strings_.size()) {
            return strings_[index].get();
        }
        return nullptr;
    }

    /**
     * Clear all strings from the buffer
     */
    void clear() {
        strings_.clear();
    }

    /**
     * Check if buffer is empty
     * @return true if buffer is empty, false otherwise
     */
    bool empty() const {
        return strings_.empty();
    }

    // Iterator support for range-based for loops
    class iterator {
    private:
        typename std::vector<std::unique_ptr<char, decltype(&std::free)>>::const_iterator it_;

    public:
        explicit iterator(typename std::vector<std::unique_ptr<char, decltype(&std::free)>>::const_iterator it) : it_(it) {}

        char* operator*() const { return it_->get(); }
        iterator& operator++() { ++it_; return *this; }
        bool operator!=(const iterator& other) const { return it_ != other.it_; }
        bool operator==(const iterator& other) const { return it_ == other.it_; }
    };

    iterator begin() const { return iterator(strings_.begin()); }
    iterator end() const { return iterator(strings_.end()); }
};

} // namespace csync2


#endif // BUFFER_CPP_HPP
