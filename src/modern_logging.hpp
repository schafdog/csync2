#ifndef MODERN_LOGGING_HPP
#define MODERN_LOGGING_HPP

#include <iostream>
#include <sstream>
#include <string>
#include <memory>
#include <chrono>
#include <iomanip>
#include <fstream>
#include <mutex>
#include <thread>
#include <unordered_map>
#include <functional>
#include <syslog.h>
#include <regex>
#include <variant>

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

namespace csync2 {

/// Log levels matching syslog priorities
enum class LogLevel : int {
    Emergency = LOG_EMERG,   // 0
    Alert     = LOG_ALERT,   // 1
    Critical  = LOG_CRIT,    // 2
    Error     = LOG_ERR,     // 3
    Warning   = LOG_WARNING, // 4
    Notice    = LOG_NOTICE,  // 5
    Info      = LOG_INFO,    // 6
    Debug     = LOG_DEBUG    // 7
};

/// Modern C++ Logger class
class Logger {
public:
    /// Log output destinations
    enum class Output {
        Console,
        File,
        Syslog,
        Both  // Console + File
    };

private:
    LogLevel min_level_ = LogLevel::Info;
    int debug_level_ = 0;
    Output output_type_ = Output::Console;
    std::unique_ptr<std::ofstream> file_stream_;
    std::mutex log_mutex_;
    bool timestamps_ = true;
    bool show_pid_ = false;
    pid_t child_pid_ = 0;

    static std::unordered_map<LogLevel, std::string> level_names_;

public:
    /// Constructor
    Logger() = default;

    /// Configure logger
    void configure(LogLevel min_level, int debug_level, Output output = Output::Console) {
        min_level_ = min_level;
        debug_level_ = debug_level;
        output_type_ = output;
    }

    /// Set log file
    void set_log_file(const std::string& filename) {
        file_stream_ = std::make_unique<std::ofstream>(filename, std::ios::app);
        if (output_type_ == Output::Console) {
            output_type_ = Output::Both;
        }
    }

    /// Enable/disable timestamps
    void set_timestamps(bool enable) { timestamps_ = enable; }

    /// Set child PID for server processes
    void set_child_pid(pid_t pid) { child_pid_ = pid; show_pid_ = (pid != 0); }

    /// Check if level should be logged
    bool should_log(LogLevel level, int debug_level = 0) const {
        if (level <= LogLevel::Warning) return true;  // Always log warnings and above
        if (static_cast<int>(level) > static_cast<int>(min_level_)) return false;
        return debug_level <= debug_level_;
    }

    /// Main logging function with variadic templates (C++20 std::format style)
    template<typename... Args>
    void log(LogLevel level, int debug_level, const std::string& format, Args&&... args) {
        if (!should_log(level, debug_level)) return;

        std::string message = format_message(format, std::forward<Args>(args)...);
        write_log(level, message);
    }

    /// C++20 std::format style logging
    template<typename... Args>
    void log_format(LogLevel level, int debug_level, const std::string& format_str, Args&&... args) {
        if (!should_log(level, debug_level)) return;

#if CSYNC_HAS_STD_FORMAT
        try {
            std::string message = std::vformat(format_str, std::make_format_args(args...));
            write_log(level, message);
        } catch (const std::format_error&) {

        }
#elif CSYNC_HAS_FMT_FORMAT
        try {
            std::string message = fmt::vformat(format_str, fmt::make_format_args(args...));
            write_log(level, message);
        } catch (const fmt::format_error&) {
            // Fallback to printf-style if format string is not compatible
            std::string message = format_printf_style(format_str, std::forward<Args>(args)...);
            write_log(level, message);
        }
#else
        std::string message = format_printf_style(format_str, std::forward<Args>(args)...);
        write_log(level, message);
#endif
    }

    /// Stream-based logging
    class LogStream {
    private:
        Logger* logger_;
        LogLevel level_;
        int debug_level_;
        std::ostringstream stream_;

    public:
        LogStream(Logger* logger, LogLevel level, int debug_level)
            : logger_(logger), level_(level), debug_level_(debug_level) {}

        template<typename T>
        LogStream& operator<<(const T& value) {
            if (logger_->should_log(level_, debug_level_)) {
                stream_ << value;
            }
            return *this;
        }

        ~LogStream() {
            if (logger_->should_log(level_, debug_level_)) {
                logger_->write_log(level_, stream_.str());
            }
        }
    };

    /// Create log stream
    LogStream stream(LogLevel level, int debug_level = 0) {
        return LogStream(this, level, debug_level);
    }

private:
    /// Format message with arguments - supports both printf-style and C++20 std::format
    template<typename... Args>
    std::string format_message(const std::string& format, Args&&... args) {
        if constexpr (sizeof...(args) == 0) {
            return format;
        } else {
#if CSYNC_HAS_STD_FORMAT
            // Try C++20 std::vformat for runtime format strings
            try {
                return std::vformat(format, std::make_format_args(args...));
            } catch (const std::format_error&) {
                // Fallback to printf-style if format string is not compatible
                return ""; // format_printf_style(format, std::forward<Args>(args)...);
            }
#elif CSYNC_HAS_FMT_FORMAT
            // Use fmt library if available
            try {
                return fmt::vformat(format, fmt::make_format_args(args...));
            } catch (const fmt::format_error&) {
                // Fallback to printf-style if format string is not compatible
                return format_printf_style(format, std::forward<Args>(args)...);
            }
#else
            // Fallback to printf-style formatting
            return format_printf_style(format, std::forward<Args>(args)...);
#endif
        }
    }

    /// Printf-style formatting fallback
    template<typename... Args>
    std::string format_printf_style(const std::string& format, Args&&... args) {
        size_t size = std::snprintf(nullptr, 0, format.c_str(), args...) + 1;
        std::unique_ptr<char[]> buf(new char[size]);
        std::snprintf(buf.get(), size, format.c_str(), args...);
        return std::string(buf.get(), buf.get() + size - 1);
    }

    /// Write formatted log message
    void write_log(LogLevel level, const std::string& message) {
        std::lock_guard<std::mutex> lock(log_mutex_);

        std::string formatted = format_log_line(level, message);

        switch (output_type_) {
            case Output::Console:
                std::cout << formatted << std::flush;
                break;

            case Output::File:
                if (file_stream_ && file_stream_->is_open()) {
                    *file_stream_ << formatted << std::flush;
                }
                break;

            case Output::Syslog:
                syslog(static_cast<int>(level), "%s", message.c_str());
                break;

            case Output::Both:
                std::cout << formatted << std::flush;
                if (file_stream_ && file_stream_->is_open()) {
                    *file_stream_ << formatted << std::flush;
                }
                break;
        }
    }

    /// Format complete log line with timestamp, PID, etc.
    std::string format_log_line(LogLevel level, const std::string& message) {
        std::ostringstream oss;

        // Timestamp
        if (timestamps_) {
            auto now = std::chrono::system_clock::now();
            auto time_t = std::chrono::system_clock::to_time_t(now);
            auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(
                now.time_since_epoch()) % 1000;

            oss << std::put_time(std::localtime(&time_t), "%Y-%m-%d %H:%M:%S");
            oss << '.' << std::setfill('0') << std::setw(3) << ms.count() << " ";
        }

        // Child PID
        if (show_pid_) {
            oss << "<" << child_pid_ << "> ";
        }

        // Message
        oss << message;

        // Ensure newline
        if (!message.empty() && message.back() != '\n') {
            oss << '\n';
        }

        return oss.str();
    }
};

/// Global logger instance
extern csync2::Logger g_logger;

/// RAII Log Guard for scoped logging
class LogGuard {
private:
    std::string scope_name_;
    LogLevel level_;
    std::chrono::steady_clock::time_point start_time_;

public:
    LogGuard(const std::string& scope, LogLevel level = LogLevel::Debug)
        : scope_name_(scope), level_(level), start_time_(std::chrono::steady_clock::now()) {
        g_logger.log(level_, 3, "Entering %s", scope_name_.c_str());
    }

    ~LogGuard() {
        auto end_time = std::chrono::steady_clock::now();
        auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time_);
        g_logger.log(level_, 3, "Exiting %s (took %lld ms)", scope_name_.c_str(), duration.count());
    }
};

} // namespace csync2

#define CSYNC_LOG_SCOPE(name) csync2::LogGuard _log_guard(name)

/// Convenience macros for backward compatibility (printf-style)
#define csync_log_cpp(level, debug_level, ...) \
    csync2::g_logger.log(csync2::LogLevel::level, debug_level, __VA_ARGS__)

#define csync_debug_cpp(level, ...) \
    csync2::g_logger.log(csync2::LogLevel::Debug, level, __VA_ARGS__)

#define csync_info_cpp(level, ...) \
    csync2::g_logger.log(csync2::LogLevel::Info, level, __VA_ARGS__)

#define csync_warn_cpp(level, ...) \
    csync2::g_logger.log(csync2::LogLevel::Warning, level, __VA_ARGS__)

#define csync_error_cpp(level, ...) \
    csync2::g_logger.log(csync2::LogLevel::Error, level, __VA_ARGS__)

#define csync_fatal_cpp(...) do { \
    csync2::g_logger.log(csync2::LogLevel::Critical, 0, __VA_ARGS__); \
    exit(1); \
} while(0)

/// C++20 std::format style macros
#define CSYNC_LOG_FORMAT(level, debug_level, ...) \
    csync2::g_logger.log_format(csync2::LogLevel::level, debug_level, __VA_ARGS__)

#define CSYNC_DEBUG_FORMAT(level, ...) \
    csync2::g_logger.log_format(csync2::LogLevel::Debug, level, __VA_ARGS__)

#define CSYNC_INFO_FORMAT(level, ...) \
    csync2::g_logger.log_format(csync2::LogLevel::Info, level, __VA_ARGS__)

#define CSYNC_WARN_FORMAT(level, ...) \
    csync2::g_logger.log_format(csync2::LogLevel::Warning, level, __VA_ARGS__)

#define CSYNC_ERROR_FORMAT(level, ...) \
    csync2::g_logger.log_format(csync2::LogLevel::Error, level, __VA_ARGS__)

#define CSYNC_FATAL_FORMAT(...) do { \
    csync2::g_logger.log_format(csync2::LogLevel::Critical, 0, __VA_ARGS__); \
    exit(1); \
} while(0)

/// Stream-based logging macros
#define CSYNC_LOG_STREAM(level, debug_level) \
    csync2::g_logger.stream(csync2::LogLevel::level, debug_level)

#define CSYNC_DEBUG_STREAM(level) \
    csync2::g_logger.stream(csync2::LogLevel::Debug, level)

#define CSYNC_INFO_STREAM(level) \
    csync2::g_logger.stream(csync2::LogLevel::Info, level)

#define CSYNC_WARN_STREAM(level) \
    csync2::g_logger.stream(csync2::LogLevel::Warning, level)

#define CSYNC_ERROR_STREAM(level) \
    csync2::g_logger.stream(csync2::LogLevel::Error, level)

#endif // MODERN_LOGGING_HPP
