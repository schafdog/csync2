# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Csync2 is a cluster synchronization tool (2nd generation) that keeps files in sync across multiple hosts. This is Dennis Schafroth's maintained fork with significant enhancements including modern C++ migration, multiple database backends, and advanced conflict resolution.

## Build Commands

### Initial Setup
```bash
./autogen.sh                    # Bootstrap autotools
./configure                     # Configure build (use --help for options)
make                           # Build the project
```

### Platform-Specific Setup
```bash
./setup-macos.sh               # macOS setup with Homebrew dependencies
```

### Common Build Tasks
```bash
make clean                     # Clean build artifacts
make install                   # Install (requires appropriate permissions)
make distclean                 # Full cleanup including configure outputs
```

### Testing
```bash
cd test && ./test.sh           # Run full test suite
cd test && ./test_simple.sh    # Run basic tests
```

## Architecture Overview

### Core Components

**Database Layer** (`src/db_*.cpp`): Pluggable database backends with unified API
- SQLite (primary), MySQL, PostgreSQL, Redis support
- Connection pooling and transaction management
- Schema defined in `sql/csync2.sql`

**Sync Engine** (`src/check.cpp`, `src/update.cpp`): File comparison and transfer logic
- Rsync integration for efficient transfers (`src/rsync.cpp`)
- Conflict detection and resolution (`src/action.cpp`)
- File metadata tracking and checksumming (`src/digest.cpp`)

**Network Layer** (`src/conn.cpp`, `src/daemon.cpp`): Cluster communication
- SSL/TLS encryption support
- Certificate-based authentication
- Connection pooling and error handling

**Configuration System** (`src/cfgfile_parser.y`, `src/cfgfile_scanner.l`): Yacc/Bison parser
- Group-based file organization
- Pattern matching for includes/excludes
- Action triggers for post-sync commands

### Key Data Structures

**Database Schema**: Five main tables (file, dirty, action, hint, host, x509_cert)
- `file` table tracks file metadata and sync status
- `dirty` table manages files requiring synchronization
- `action` table schedules post-sync commands

**Configuration**: Group-centric design in `csync2.cfg`
- Hosts belong to groups
- Files/patterns assigned to groups
- Peer relationships define sync topology

## Development Context

### Current Branch: cpp-std-string-type
Active migration from C-style strings to C++ std::string for memory safety and modern practices.

### Code Modernization
- Converting C strings to std::string throughout codebase
- Implementing modern logging system (`src/modern_logging.cpp`)
- Address sanitizer integration for memory safety
- Compiler warning cleanup

### Testing Strategy
Shell script-based integration tests in `test/` directory covering:
- Basic synchronization scenarios
- Database backend compatibility
- Hardlink and move operations
- Conflict resolution
- Character encoding (UTF-8/Latin1)

### Memory Safety
- Address sanitizer enabled during development
- NULL pointer checks added throughout
- Buffer overflow protection
- String handling safety improvements

## Platform Notes

### macOS Development
- Uses Homebrew for dependencies
- Specific compatibility shims for BSD vs GNU differences
- Directory separator and path handling adaptations

### Database Backends
- SQLite: Default, embedded database
- MySQL/PostgreSQL: For larger deployments
- Redis: Experimental backend for high-performance scenarios

## Configuration Management

Main config file: `csync2.cfg`
- Define groups and their member hosts
- Specify file patterns to sync
- Configure include/exclude rules
- Set up action hooks for post-sync processing

Example group structure:
```
group cluster_group {
    host host1 host2 host3;
    key /etc/csync2/cluster.key;
    include /etc/important-files;
    action { pattern /etc/passwd; exec "service restart needed-service"; }
}
```

## Common Development Patterns

### String Handling Migration
When converting C strings to std::string:
- Check for NULL before creating std::string
- Use `.c_str()` when interfacing with C APIs
- Prefer string methods over C string functions

### Database Operations
- Always use the db_api interface, never direct SQL
- Handle connection failures gracefully
- Use transactions for multi-step operations

### Error Handling
- Use the centralized error system in `src/error.cpp`
- Log errors through the modern logging system
- Provide meaningful error messages with context