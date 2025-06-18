#include "modern_logging.hpp"
#include <cstdarg>
#include <cstdio>
#include <unistd.h>

namespace csync2 {

/// Initialize static member
std::unordered_map<LogLevel, std::string> Logger::level_names_ = {
    {LogLevel::Emergency, "EMERG"},
    {LogLevel::Alert,     "ALERT"},
    {LogLevel::Critical,  "CRIT"},
    {LogLevel::Error,     "ERROR"},
    {LogLevel::Warning,   "WARN"},
    {LogLevel::Notice,    "NOTICE"},
    {LogLevel::Info,      "INFO"},
    {LogLevel::Debug,     "DEBUG"}
};

/// Global logger instance
Logger g_logger;

} // namespace csync2

