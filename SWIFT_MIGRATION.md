# Swift Migration Guide for Csync2

This document describes the strategy and roadmap for gradually migrating csync2 from C++ to Swift.

## Overview

The Swift migration approach uses Swift's C++ interoperability feature to enable gradual, incremental migration from C++ to Swift. This allows:

- **Coexistence**: C++ and Swift code can work together seamlessly
- **Incremental Migration**: Migrate one component at a time
- **Risk Mitigation**: Existing C++ code continues to work while Swift code is developed
- **Modern Language Features**: Leverage Swift's safety, concurrency, and developer experience

## Project Structure

```
csync2/
├── Package.swift                    # Swift Package Manager manifest
├── Sources/
│   ├── Csync2CXX/                  # C++ interoperability layer
│   │   ├── include/
│   │   │   ├── module.modulemap    # Module map for C++ exposure
│   │   │   └── csync2_wrapper.h    # C++ wrapper headers
│   │   └── csync2_wrapper.cpp      # C++ wrapper implementation
│   └── Csync2Swift/                # Swift implementation
│       ├── Csync2.swift            # Main Swift API
│       ├── Database.swift          # Database wrapper
│       ├── SyncEngine.swift        # Sync engine wrapper
│       ├── NetworkManager.swift    # Network wrapper
│       └── main.swift              # Swift entry point
├── Tests/
│   └── Csync2SwiftTests/           # Swift unit tests
└── src/                            # Original C++ source (unchanged)
```

## Build Systems

### Swift Package Manager (SPM)

The Swift version is built using Swift Package Manager:

```bash
# Build the Swift version
swift build

# Run the Swift version
swift run csync2-swift

# Run tests
swift test

# Build in release mode
swift build -c release
```

### Autotools (Original)

The original C++ build system continues to work:

```bash
./autogen.sh
./configure
make
```

Both build systems can coexist without interference.

## Migration Strategy

### Phase 1: Foundation (CURRENT)

**Status**: ✅ Complete

**Goals**:
- Set up Swift Package Manager structure
- Create C++/Swift interoperability layer
- Implement stub wrappers for core components
- Establish build and test infrastructure

**Deliverables**:
- ✅ Package.swift manifest
- ✅ C++ wrapper headers and stubs
- ✅ Swift API layer
- ✅ Basic test suite
- ✅ Documentation

### Phase 2: Database Layer Migration

**Status**: 🔄 Next

**Goals**:
- Migrate database abstraction layer to Swift
- Implement Swift versions of database backends (SQLite first)
- Maintain compatibility with existing database schema

**Tasks**:
1. Create Swift protocol for database operations
2. Implement SQLite backend in Swift
3. Add migration path for PostgreSQL and MySQL
4. Wire up C++ wrapper to actual database API
5. Add comprehensive database tests
6. Performance benchmarking

**Files to Migrate**:
- `src/db_api.cpp` → `Sources/Csync2Swift/Database/DatabaseAPI.swift`
- `src/db_sqlite.cpp` → `Sources/Csync2Swift/Database/SQLiteBackend.swift`
- `src/database_v2.cpp` → `Sources/Csync2Swift/Database/DatabaseV2.swift`

### Phase 3: Core Utilities Migration

**Status**: 📋 Planned

**Goals**:
- Migrate utility functions to Swift
- Replace C string handling with Swift String
- Implement modern error handling

**Tasks**:
1. Migrate digest/checksum calculation
2. Migrate URL encoding/decoding
3. Migrate path manipulation utilities
4. Create Swift-native error types
5. Add logging infrastructure

**Files to Migrate**:
- `src/digest.cpp` → `Sources/Csync2Swift/Utilities/Digest.swift`
- `src/urlencode.cpp` → `Sources/Csync2Swift/Utilities/URLEncoding.swift`
- `src/error.cpp` → `Sources/Csync2Swift/Core/Error.swift`

### Phase 4: Configuration Parser Migration

**Status**: 📋 Planned

**Goals**:
- Replace Yacc/Bison parser with Swift parser
- Use modern Swift parsing libraries (e.g., swift-parsing)
- Improve configuration validation and error messages

**Tasks**:
1. Define Swift configuration model
2. Implement Swift parser for csync2.cfg format
3. Add comprehensive validation
4. Create migration tool for config files
5. Add configuration tests

**Files to Migrate**:
- `src/cfgfile_parser.y` → `Sources/Csync2Swift/Config/Parser.swift`
- `src/cfgfile_scanner.l` → (Replaced by Swift parser)

### Phase 5: Sync Engine Migration

**Status**: 📋 Planned

**Goals**:
- Migrate core synchronization logic to Swift
- Implement file checking and comparison
- Maintain rsync integration

**Tasks**:
1. Migrate file checking logic
2. Implement conflict detection in Swift
3. Create action scheduling system
4. Integrate with rsync library (via C wrapper if needed)
5. Comprehensive sync testing

**Files to Migrate**:
- `src/check.cpp` → `Sources/Csync2Swift/Sync/Check.swift`
- `src/update.cpp` → `Sources/Csync2Swift/Sync/Update.swift`
- `src/action.cpp` → `Sources/Csync2Swift/Sync/Action.swift`

### Phase 6: Network Layer Migration

**Status**: 📋 Planned

**Goals**:
- Migrate network communication to Swift
- Use modern Swift concurrency (async/await)
- Maintain SSL/TLS security

**Tasks**:
1. Implement Swift networking using URLSession or Network.framework
2. Add async/await support for network operations
3. Implement certificate-based authentication
4. Add connection pooling
5. Network testing and security audit

**Files to Migrate**:
- `src/conn.cpp` → `Sources/Csync2Swift/Network/Connection.swift`
- `src/daemon.cpp` → `Sources/Csync2Swift/Network/Daemon.swift`

### Phase 7: Main Application Migration

**Status**: 📋 Planned

**Goals**:
- Complete migration of main application logic
- Implement command-line parsing in Swift
- Deprecate C++ version

**Tasks**:
1. Migrate command-line argument parsing
2. Implement all command modes (-x, -u, -c, etc.)
3. Add signal handling
4. Complete integration testing
5. Performance comparison with C++ version
6. Production readiness checklist

**Files to Migrate**:
- `src/main.cpp` → Already done in `Sources/Csync2Swift/main.swift`
- `src/csync2.cpp` → Fully integrated into Swift application

### Phase 8: Cleanup and Optimization

**Status**: 📋 Planned

**Goals**:
- Remove C++ code
- Optimize performance
- Documentation and release

**Tasks**:
1. Remove C++ wrapper layer
2. Performance profiling and optimization
3. Memory usage optimization
4. Update all documentation
5. Create migration guide for users
6. Release Swift version as csync2 3.0

## Technology Choices

### Swift C++ Interoperability

Swift 5.9+ includes built-in C++ interoperability:

- No bridging headers needed for C++
- Direct use of C++ classes in Swift
- Standard C++ library types (std::string, std::vector) work directly
- Bidirectional interop (Swift can call C++, C++ can call Swift)

**Enabling C++ Interop**:
```swift
.target(
    name: "Csync2Swift",
    swiftSettings: [
        .interoperabilityMode(.Cxx)
    ]
)
```

### Dependencies

**Swift Dependencies** (to be added as needed):
- `swift-argument-parser` - Command-line parsing
- `swift-log` - Structured logging
- `swift-nio` - High-performance networking (optional)
- `swift-crypto` - Cryptographic operations

**System Libraries** (bridged from C++):
- SQLite3
- GnuTLS or Swift Crypto for SSL/TLS
- librsync (may need C wrapper)

## Best Practices

### Code Organization

1. **One class per file**: Follow Swift conventions
2. **Protocol-oriented design**: Use protocols for abstraction
3. **Value types where possible**: Prefer structs over classes
4. **Explicit error handling**: Use throws and Result types

### Memory Safety

1. **No manual memory management**: Let ARC handle it
2. **Avoid force unwrapping**: Use optional binding
3. **Guard statements**: For early returns
4. **Ownership annotations**: Use `borrowing` and `consuming` when appropriate

### Testing

1. **Unit tests for all new code**: Aim for >80% coverage
2. **Integration tests**: Test C++/Swift boundaries
3. **Performance tests**: Compare with C++ version
4. **Regression tests**: Ensure compatibility

### Documentation

1. **DocC comments**: Use `///` for public APIs
2. **README updates**: Keep migration status current
3. **Migration notes**: Document breaking changes
4. **Examples**: Provide usage examples

## Building and Testing

### Development Build

```bash
# Build Swift version
swift build

# Run with debug output
swift run csync2-swift -d

# Run tests
swift test

# Run specific test
swift test --filter Csync2Tests
```

### Release Build

```bash
# Build optimized binary
swift build -c release

# Binary location
.build/release/csync2-swift

# Install (manual for now)
cp .build/release/csync2-swift /usr/local/bin/
```

### Continuous Integration

GitHub Actions workflow for Swift:

```yaml
- name: Build Swift version
  run: swift build -c release

- name: Run Swift tests
  run: swift test
```

## Migration Guidelines

### When Migrating a C++ File

1. **Create Swift equivalent**: Match functionality first
2. **Add tests**: Ensure behavior is identical
3. **Update wrapper**: Connect Swift to C++ wrapper
4. **Benchmark**: Verify performance is acceptable
5. **Document**: Note any API changes
6. **Review**: Get code review before removing C++

### Maintaining Compatibility

- Database schema must remain compatible
- Configuration file format unchanged (unless v3.0)
- Network protocol must be backward compatible
- Command-line interface should match (with improvements)

### Performance Considerations

- Profile both versions
- Swift should be within 10% of C++ performance
- Memory usage should be comparable or better
- Startup time should be faster (due to less init)

## Current Status

### Completed
- ✅ Swift Package structure
- ✅ C++/Swift interop layer
- ✅ Stub implementations
- ✅ Basic Swift APIs
- ✅ Test infrastructure
- ✅ Documentation

### In Progress
- None (ready for Phase 2)

### Next Steps
1. Implement actual database operations in C++ wrapper
2. Create Swift SQLite backend
3. Wire up database tests
4. Begin Phase 2 migration

## Resources

- [Swift C++ Interoperability](https://www.swift.org/documentation/cxx-interop/)
- [Swift Package Manager](https://swift.org/package-manager/)
- [Swift Evolution Proposals](https://github.com/apple/swift-evolution)
- [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/)

## Questions and Answers

**Q: Why Swift instead of Rust or Go?**
A: Swift offers excellent C++ interoperability, memory safety, and modern language features. It's also well-supported on both macOS and Linux, which are our primary platforms.

**Q: What about Windows support?**
A: Swift on Windows is improving. We'll evaluate Windows support in Phase 7.

**Q: Will this break existing installations?**
A: No. The C++ version will continue to work. The Swift version is opt-in until Phase 8.

**Q: How long will the migration take?**
A: Estimated 6-12 months for complete migration, depending on resources. Each phase is independently useful.

**Q: Can I help?**
A: Yes! See CONTRIBUTING.md for guidelines. Database layer (Phase 2) is a great starting point.

## Contact

For questions about the Swift migration:
- Create an issue with the `swift-migration` label
- Contact the maintainers
- Join the discussion in the Swift migration branch

---

**Last Updated**: 2025-10-10
**Current Phase**: 1 (Foundation) - Complete
**Next Phase**: 2 (Database Layer)
