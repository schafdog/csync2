# Csync2 C to C++ Migration Plan

## Overview
This document outlines the comprehensive plan to migrate the csync2 codebase from C to modern C++17. The migration will be done incrementally to maintain functionality while modernizing the codebase.

## Migration Strategy: Incremental Modernization

### Phase 1: Build System and Toolchain (Week 1-2) ✅ STARTED
**Status: In Progress**

#### Completed:
- [x] Updated `configure.ac` to support C++ compilation
- [x] Modified `src/Makefile.am` to use C++ compiler and file extensions
- [x] Added C++ compatibility guards to main header file
- [x] Fixed C++ keyword conflicts (`new` function names)

#### Remaining Tasks:
- [ ] Update all `.c` files to `.cpp` extensions
- [ ] Test compilation with C++ compiler
- [ ] Fix any C++ compilation errors
- [ ] Update CI/CD pipeline for C++

### Phase 2: Header Modernization (Week 2-3)
**Status: Partially Complete**

#### Completed:
- [x] Created modern C++ header (`csync2_cpp.hpp`)
- [x] Added C++ exception classes
- [x] Created type-safe enums
- [x] Added smart pointer aliases

#### Remaining Tasks:
- [ ] Wrap all C headers with `extern "C"` blocks
- [ ] Create C++ wrapper headers for each module
- [ ] Add namespace organization
- [ ] Implement RAII wrappers for C resources

### Phase 3: Core Class Implementation (Week 3-5)
**Status: Design Complete**

#### Database Module:
- [x] Created `Database` class design
- [x] Added transaction support
- [x] Designed connection pooling
- [ ] Implement database.cpp
- [ ] Add unit tests
- [ ] Integrate with existing C code

#### Connection Module:
- [x] Created `Connection` class design
- [x] Added SSL support design
- [x] Designed connection management
- [ ] Implement connection.cpp
- [ ] Add SSL wrapper
- [ ] Integrate with existing network code

### Phase 4: Memory Management Modernization (Week 5-6)

#### Smart Pointers:
- [ ] Replace `malloc/free` with smart pointers where appropriate
- [ ] Implement RAII for file handles
- [ ] Add automatic resource cleanup
- [ ] Convert linked lists to STL containers

#### String Management:
- [ ] Replace C strings with `std::string` in new code
- [ ] Add string utility functions
- [ ] Implement safe string operations
- [ ] Maintain C API compatibility

### Phase 5: Error Handling (Week 6-7)

#### Exception Safety:
- [ ] Replace error codes with exceptions in C++ code
- [ ] Implement exception-safe resource management
- [ ] Add error context and stack traces
- [ ] Maintain C API error handling

#### Logging System:
- [ ] Implement modern C++ logging
- [ ] Add structured logging support
- [ ] Thread-safe logging
- [ ] Integration with existing syslog

### Phase 6: Configuration System (Week 7-8)

#### Modern Config:
- [ ] Create C++ configuration classes
- [ ] Add JSON/YAML support alongside existing format
- [ ] Implement configuration validation
- [ ] Add runtime configuration updates

### Phase 7: Testing and Validation (Week 8-10)

#### Unit Testing:
- [ ] Set up C++ testing framework (Google Test)
- [ ] Write unit tests for new C++ classes
- [ ] Integration tests for C/C++ interop
- [ ] Performance benchmarks

#### Compatibility Testing:
- [ ] Ensure existing functionality works
- [ ] Test with all database backends
- [ ] Verify SSL/TLS functionality
- [ ] Cross-platform testing

### Phase 8: Documentation and Cleanup (Week 10-12)

#### Documentation:
- [ ] Update API documentation
- [ ] Create C++ usage examples
- [ ] Migration guide for users
- [ ] Developer documentation

#### Code Cleanup:
- [ ] Remove deprecated C patterns
- [ ] Optimize performance
- [ ] Code review and refactoring
- [ ] Final testing

## File Migration Priority

### High Priority (Core functionality):
1. `src/csync2.c` → `src/csync2.cpp` (main entry point)
2. `src/db.c` → `src/db.cpp` (database operations)
3. `src/conn.c` → `src/conn.cpp` (network connections)
4. `src/daemon.c` → `src/daemon.cpp` (server functionality)

### Medium Priority (Business logic):
5. `src/update.c` → `src/update.cpp` (sync operations)
6. `src/check.c` → `src/check.cpp` (file checking)
7. `src/groups.c` → `src/groups.cpp` (group management)
8. `src/action.c` → `src/action.cpp` (action execution)

### Low Priority (Utilities):
9. `src/buffer.c` → `src/buffer.cpp` (buffer management)
10. `src/urlencode.c` → `src/urlencode.cpp` (URL encoding)
11. `src/digest.c` → `src/digest.cpp` (checksums)
12. `src/error.c` → `src/error.cpp` (error handling)

## C++ Features to Adopt

### Immediate (C++17):
- **RAII**: Automatic resource management
- **Smart Pointers**: `std::unique_ptr`, `std::shared_ptr`
- **STL Containers**: `std::vector`, `std::string`, `std::unordered_map`
- **Type Safety**: `enum class`, strong typing
- **Exception Handling**: Replace error codes
- **Namespaces**: Organize code logically

### Future Considerations (C++20+):
- **Concepts**: Type constraints
- **Modules**: Better compilation
- **Coroutines**: Async operations
- **Ranges**: Functional programming

## Compatibility Strategy

### C API Preservation:
- Maintain all existing C function signatures
- Provide C wrapper functions for new C++ classes
- Ensure ABI compatibility for shared libraries
- Keep existing configuration file format

### Gradual Migration:
- New features implemented in C++
- Existing code migrated module by module
- Extensive testing at each step
- Rollback capability if issues arise

## Risk Mitigation

### Technical Risks:
- **Performance**: Benchmark C++ vs C performance
- **Memory Usage**: Monitor memory consumption
- **Compilation**: Ensure all platforms compile
- **Dependencies**: Minimize new dependencies

### Mitigation Strategies:
- Incremental migration with testing
- Performance monitoring and optimization
- Comprehensive test suite
- Fallback to C implementation if needed

## Success Metrics

### Code Quality:
- Reduced memory leaks (valgrind clean)
- Fewer segmentation faults
- Better error handling
- Improved maintainability

### Performance:
- No significant performance regression
- Improved memory usage patterns
- Better resource cleanup
- Faster development cycles

### Developer Experience:
- Easier to add new features
- Better debugging experience
- Improved code readability
- Modern development practices

## Timeline Summary

| Phase | Duration | Status | Key Deliverables |
|-------|----------|--------|------------------|
| 1 | Week 1-2 | In Progress | Build system, keyword fixes |
| 2 | Week 2-3 | Partial | Header modernization |
| 3 | Week 3-5 | Design | Core classes implementation |
| 4 | Week 5-6 | Planned | Memory management |
| 5 | Week 6-7 | Planned | Error handling |
| 6 | Week 7-8 | Planned | Configuration system |
| 7 | Week 8-10 | Planned | Testing and validation |
| 8 | Week 10-12 | Planned | Documentation and cleanup |

**Total Estimated Duration: 12 weeks**

## Next Steps

1. **Complete Phase 1**: Finish build system migration and test compilation
2. **Start Phase 2**: Begin implementing C++ wrapper classes
3. **Set up Testing**: Establish C++ testing framework
4. **Create Benchmarks**: Baseline performance measurements
5. **Team Training**: Ensure team is comfortable with C++17 features

This migration will modernize csync2 while maintaining backward compatibility and improving code quality, maintainability, and developer experience.
