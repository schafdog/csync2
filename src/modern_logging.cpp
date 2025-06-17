#include "modern_logging.hpp"
#include <cstdarg>
#include <cstdio>
#include <unistd.h>

namespace csync2 {

/// Global logger instance
Logger g_logger;

} // namespace csync2

/// C interface implementation for backward compatibility
extern "C" {

void csync_log_cpp(int priority, int level, const char* format, ...) {
    va_list args;
    va_start(args, format);
    
    // Convert to string using vsnprintf
    size_t size = std::vsnprintf(nullptr, 0, format, args) + 1;
    va_end(args);
    
    std::unique_ptr<char[]> buf(new char[size]);
    va_start(args, format);
    std::vsnprintf(buf.get(), size, format, args);
    va_end(args);
    
    csync2::g_logger.log(
        static_cast<csync2::LogLevel>(priority), 
        level, 
        std::string(buf.get())
    );
}

void csync_configure_logger(int min_level, int debug_level, int output_type) {
    csync2::g_logger.configure(
        static_cast<csync2::LogLevel>(min_level),
        debug_level,
        static_cast<csync2::Logger::Output>(output_type)
    );
}

void csync_set_log_file(const char* filename) {
    if (filename) {
        csync2::g_logger.set_log_file(std::string(filename));
    }
}

void csync_set_timestamps(int enable) {
    csync2::g_logger.set_timestamps(enable != 0);
}

void csync_set_child_pid(int pid) {
    csync2::g_logger.set_child_pid(static_cast<pid_t>(pid));
}

} // extern "C"
