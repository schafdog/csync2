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
#include "modern_textlist.hpp"

namespace csync2 {

class DirtyRecord {
public:
    // Constructors
    DirtyRecord() = default;
    explicit DirtyRecord(const std::string& filename, FileOperation operation = FileOperation::None, std::optional<FileRecord> other = std::nullopt)
        : file_{filename}, operation_{FileOperation::None},
          other_{other} {}

    void setOther(const FileRecord& other) {
        other_ = other;
    }
private:
    FileRecord file_;
    FileOperation operation_;
    std::optional<FileRecord> other_;
};

} // namespace csync2

#endif // CSYNC2_DIRTY_RECORD_HPP
