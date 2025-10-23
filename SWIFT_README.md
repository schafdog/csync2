# Csync2 Swift Edition

Swift implementation of csync2 using C++ interoperability for gradual migration.

## Quick Start

### Prerequisites

- Swift 5.9 or later
- Linux or macOS
- SQLite3 development libraries
- GnuTLS development libraries

### Building

```bash
# Build the Swift version
swift build

# Run the Swift executable
swift run csync2-swift --help

# Run tests
swift test
```

### Release Build

```bash
swift build -c release
.build/release/csync2-swift --version
```

## Project Structure

- `Package.swift` - Swift Package Manager manifest
- `Sources/Csync2CXX/` - C++ wrapper for interoperability
- `Sources/Csync2Swift/` - Swift implementation
- `Tests/Csync2SwiftTests/` - Test suite

## Development Status

**Phase 1: Foundation** ✅ Complete

This is currently a proof-of-concept with stub implementations. See [SWIFT_MIGRATION.md](SWIFT_MIGRATION.md) for the full migration roadmap.

### What Works

- Swift package builds successfully
- C++/Swift interoperability layer
- Basic API structure
- Command-line parsing framework
- Test infrastructure

### What's Next (Phase 2)

- Implement actual database operations
- Wire up to existing C++ code
- Add real synchronization logic

## Usage Example

```swift
import Csync2Swift

// Create configuration
var config = Configuration(
    hostname: "server1.example.com",
    configFile: "/etc/csync2/csync2.cfg",
    databasePath: "/var/lib/csync2/csync2.db"
)

// Initialize csync2
let csync2 = try Csync2(config: config)

// Check files
try csync2.check(files: ["/etc/myapp/config.conf"])

// Update to peers
try csync2.update(peers: ["server2.example.com"])
```

## API Overview

### Core Classes

**Csync2** - Main application class
```swift
public final class Csync2 {
    init(config: Configuration) throws
    func check(files: [String]) throws
    func update(peers: [String]) throws
    var version: String { get }
    var hostname: String { get }
}
```

**Database** - Database operations
```swift
public struct Database {
    func getFile(_ filename: String) -> FileRecord?
    func updateFile(_ record: FileRecord) throws
    func getDirtyFiles() -> [String]
}
```

**SyncEngine** - Synchronization logic
```swift
public struct SyncEngine {
    func checkFile(_ filename: String) throws
    func syncFile(_ filename: String, to peer: String) throws
    func listDirtyFiles() -> [String]
}
```

**NetworkManager** - Network operations
```swift
public struct NetworkManager {
    func connect(host: String, port: String) throws
    func disconnect()
    func sendCommand(_ command: String) throws
    func receiveResponse() throws -> String
}
```

## Testing

Run the test suite:

```bash
# All tests
swift test

# Specific test
swift test --filter Csync2Tests

# Verbose output
swift test --verbose
```

## Documentation

Generate documentation using DocC:

```bash
swift package generate-documentation
```

## Contributing to Swift Migration

See [SWIFT_MIGRATION.md](SWIFT_MIGRATION.md) for:
- Migration strategy and phases
- Coding guidelines
- Areas that need work
- How to contribute

## Comparison with C++ Version

| Feature | C++ Version | Swift Version |
|---------|-------------|---------------|
| Build System | Autotools | Swift PM |
| Language | C++17 | Swift 5.9+ |
| Memory Safety | Manual | Automatic (ARC) |
| Concurrency | Threads | async/await |
| Error Handling | errno, exceptions | Result, throws |
| String Handling | char*, std::string | String |
| Status | Production | Development |

## Parallel Building

Both versions can be built simultaneously:

```bash
# Build C++ version
./configure && make

# Build Swift version (different directory)
swift build

# Both executables exist:
./src/csync2              # C++ version
.build/debug/csync2-swift # Swift version
```

## Performance Notes

Current status: Not yet benchmarked (stub implementation)

Expected performance characteristics:
- Similar or better than C++ for database operations
- Comparable network performance
- Better memory safety with minimal overhead
- Faster startup time (no complex C++ static initialization)

## Installation

**Development**: Use `swift run csync2-swift`

**System-wide** (once stable):
```bash
swift build -c release
sudo cp .build/release/csync2-swift /usr/local/bin/
```

## Compatibility

- **Config files**: Uses same format as C++ version
- **Database**: Compatible with existing csync2 databases
- **Network protocol**: Compatible with C++ peers
- **Command-line**: Aims for compatibility with extensions

## Known Limitations (Current Phase)

1. Stub implementation only - doesn't perform actual sync
2. Database operations not yet wired to real backend
3. Network communication not implemented
4. Configuration parser not yet migrated
5. No rsync integration yet

These will be addressed in subsequent migration phases.

## Troubleshooting

### Build Fails with "Cannot find module 'Csync2CXX'"

Ensure module.modulemap is properly configured and C++ files compile.

### Swift Version Too Old

```bash
swift --version  # Should be 5.9 or later
```

### Missing C++ Interop

Update to Swift 5.9+ which includes C++ interoperability by default.

### Library Not Found

Install required system libraries:

**macOS**:
```bash
brew install sqlite gnutls librsync
```

**Ubuntu/Debian**:
```bash
sudo apt-get install libsqlite3-dev libgnutls28-dev librsync-dev
```

## License

Same as csync2: GNU General Public License v2.0 or later

## More Information

- [Full Migration Guide](SWIFT_MIGRATION.md)
- [Original C++ README](README)
- [Csync2 Main Documentation](doc/)

---

**Status**: Phase 1 Complete - Foundation established
**Next**: Phase 2 - Database layer migration
**Updated**: 2025-10-10
