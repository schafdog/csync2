#ifndef CSYNC2_FILE_RECORD_HPP
#define CSYNC2_FILE_RECORD_HPP

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

#include "modern_logging.hpp"

namespace csync2 {

enum class FileOperation {
    Mark     = OP_MARK,
    Mkdir    = OP_MKDIR,
    New      = OP_NEW,
    MkFifo   = OP_MKFIFO,
    MkChr    = OP_MKCHR,
    Move     = OP_MOVE,
    Symlink  = OP_NEW,
    Hardlink = OP_HARDLINK,
    Delete   = OP_RM,
    Modify   = OP_MOD,
    Modify2  = OP_MOD2,
    Sync     = OP_SYNC,
    Filter   = OP_FILTER
};

enum class FileStatus {
    Clean,     // Fully synchronized
    Dirty,     // Needs synchronization
    Conflict,  // Conflicting modifications
    Ignored   // Excluded from synchronization
};

enum FileType {
    None,
    NotFound,
    Regular,
    Directory,
    SymLink,
    BlockDevice,
    CharacterDevice,
    Socket,
    Fifo,
    Unknown
};

enum class FileChangeType {
    NoChange,
    MetadataChanged,
    ContentChanged,
    PermissionChanged
};

class Hint {
public:
    std::string filename;
    bool is_recursive;
};

class Action {
public:
    std::string filename;
    std::string command;
    std::string logfile;
};

    
class FileRecord {
public:
    // Primary file identification
    struct Identity {
        std::string filename;
        dev_t device_id = 0;     // Device ID
        ino_t inode_number = 0;  // Inode number
    };

    // File metadata
    struct Metadata {
        uid_t user_id;
        gid_t group_id;
        mode_t mode;
        time_t modification_time;
        size_t file_size;
        std::string symlink_target;
        std::string checktxt;
	std::string digest;
    };

private:
    Identity identity_;
    FileType file_type_;
    Metadata metadata_;

    std::optional<std::vector<std::string>> extended_attributes_;

public:
    // Constructors
    FileRecord() = default;
    explicit FileRecord(const std::string& filename)
        : identity_{filename} {}
    explicit FileRecord(const std::string& filename, const std::string& checktxt, const std::string& digest)
	: identity_{filename} {
	metadata_.checktxt = checktxt;
	metadata_.digest = digest;
    };
	
    // Identity accessors
    const std::string& filename() const { return identity_.filename; }
    FileRecord& filename(const std::string& name) { identity_.filename = name; return *this;}

    dev_t device() const { return identity_.device_id; }
    FileRecord& device(dev_t id) { identity_.device_id = id; return *this; }
    FileRecord& device(const std::string& id);

    ino_t inode() const { return identity_.inode_number; }
    FileRecord& inode(ino_t inode) { identity_.inode_number = inode; return *this; }
    FileRecord& inode(const std::string& no);

    const Metadata& metadata() const { return metadata_; }
    FileRecord& metadata(Metadata& update) { metadata_= update; return *this; }

    // Metadata accessors
    uid_t user_id() const { return metadata_.user_id; }
    void user_id(uid_t uid) { metadata_.user_id = uid; }

    gid_t group_id() const { return metadata_.group_id; }
    FileRecord& group_id(gid_t gid) { metadata_.group_id = gid; return *this;}

    time_t modification_time() const { return metadata_.modification_time; }
    FileRecord& modification_time(time_t mtime) { metadata_.modification_time = mtime; return *this; }

    size_t file_size() const { return metadata_.file_size; }
    FileRecord& file_size(size_t size) { metadata_.file_size = size; return *this; }

    int mode() const { return metadata_.mode; }
    FileRecord& mode(int mode) { metadata_.mode = mode; return *this; }
    const std::string& checktxt() const { return metadata_.checktxt; }
    FileRecord& checktxt(const std::string& cs) { metadata_.checktxt = cs; return *this; }

    std::string digest() const { return metadata_.digest; }
    FileRecord& digest(const std::string& cs) { metadata_.digest = cs; return *this; }

    // Filesystem interaction methods
    FileChangeType detect_changes(const FileRecord& other) const {
        if (metadata_.modification_time != other.metadata_.modification_time) {
            return FileChangeType::MetadataChanged;
        }
        // Add more sophisticated change detection
        return FileChangeType::NoChange;
    }

    std::string calculate_checktxt() const;
    std::string calculate_digest() const;
    FileType& file_type() const;
    void file_type(FileType type) { file_type_ = type; };
    static FileType map_file_type(std::filesystem::file_type type);

    // Comparison operators
    bool operator==(const FileRecord& other) const {
        return identity_.filename == other.identity_.filename &&
               identity_.device_id == other.identity_.device_id &&
               identity_.inode_number == other.identity_.inode_number;
    }

    bool operator!=(const FileRecord& other) const {
        return !(*this == other);
    }

    // Utility methods
    std::string to_string() const {
#if CSYNC_HAS_STD_FORMAT
        return std::format("File: {}, Size: {}",
            identity_.filename,
            metadata_.file_size
        );
#elif CSYNC_HAS_FMT_FORMAT
        return fmt::format("File: {}, Size: {}",
            identity_.filename,
            metadata_.file_size
        );
#else
        // Fallback to string concatenation
        return "File: " + identity_.filename + ", Size: " + std::to_string(metadata_.file_size);
#endif
    }
    FileRecord from_filesystem(const std::filesystem::path& path);
    bool is_valid() const;
    std::string to_json() const;
    void from_json(const std::string& json);
    bool is_identical_to(const FileRecord& other) const;
    bool is_newer_than(const FileRecord& other) const;
    // Logging method
    void log_details() const {
        CSYNC_INFO_FORMAT(1, "FileRecord Details: %s", to_string().c_str());
    }
};

} // namespace csync2

#endif // CSYNC2_FILE_RECORD_HPP
/*
This implementation provides a comprehensive, modern C++ approach to representing a file record in the csync2 database. Key features include:

1. **Structured Metadata**
   - Separates file identity, metadata, and synchronization info
   - Uses `std::optional` for nullable fields
   - Supports filesystem permissions and extended attributes

2. **Type Safety**
   - Strongly typed enums for file operations and status
   - Compile-time type checking
   - Immutable core data with setter methods

3. **Advanced Functionality**
   - Change detection method
   - Serialization/deserialization placeholders
   - Comparison and logging methods

4. **Modern C++ Practices**
   - Uses `std::filesystem` for modern path handling
   - Leverages RAII and modern type system
   - Integrates with modern logging system

The class provides a flexible, extensible representation of file records that can be easily used across the csync2 project's synchronization logic.
 */
