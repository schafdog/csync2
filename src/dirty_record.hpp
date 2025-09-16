#ifndef CSYNC2_DIRTY_RECORD_HPP
#define CSYNC2_DIRTY_RECORD_HPP

#include "csync2.hpp"
#include <string>
#include <optional>
#include <chrono>
#include <vector>
#include <filesystem>
#include <variant>
#include <ctime>
// C++20 std::format support
#if __cplusplus >= 202002L && __has_include(<format>)
    #include <format>
    #define CSYNC_HAS_STD_FORMAT 1
#else
    #define CSYNC_HAS_STD_FORMAT 0
    // Fallback to fmt library if available
    #if __has_include(<fmt/format.h>)
        #include <fmt/format.h>
        #define CSYNC_HAS_FMT_FORMAT 1
    #else
        #define CSYNC_HAS_FMT_FORMAT 0
    #endif
#endif

#include "file_record.hpp"
#include "modern_logging.hpp"

namespace csync2 {

class DirtyRecord {
public:
    // Constructors
    DirtyRecord() = default;
    explicit DirtyRecord(const csync2::FileRecord& file, const std::string& peername,
			 const std::string& op_str = "MARK",
			 csync2::FileOperation operation = FileOperation::Mark,
			 bool forced = false, const std::optional<std::string>& other = std::nullopt)
        : file_(file), operation_(operation), peername_(peername), forced_(forced), other_(other) {}

    csync2::FileRecord& file() { return file_; }; 
    void setOther(const std::string& other) {
        other_ = other;
    }
    std::optional<std::string>& other() { return other_; };   
    void forced(bool forced) { forced_ = forced; };
    bool forced() const { return forced_; };
    std::string peername() const { return peername_; };
    void operation(const csync2::FileOperation& operation)  { operation_ = operation; };
    csync2::FileOperation operation() const { return operation_; };
    void op_str(const std::string& operation)  { op_str_ = operation; };
    const std::string&  op_str() const { return op_str_; };
private:
    csync2::FileRecord file_;
    std::string op_str_;
    csync2::FileOperation operation_;
    std::string peername_;
    bool forced_;
    std::optional<std::string> other_;
};

} // namespace csync2

#endif // CSYNC2_DIRTY_RECORD_HPP
