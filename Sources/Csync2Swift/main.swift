/*
 * main.swift - Swift entry point that calls C++ csync2_main
 *
 * This version links with the full C++ implementation and provides
 * a Swift wrapper around the existing csync2 functionality.
 *
 * Swift can now directly call csync2_main because it's declared with
 * extern "C" linkage in src/main.h (fixed in the C++ code)
 */

import Foundation

// Declare the C function using @_silgen_name
// This links to the csync2_main symbol from the C++ object files
// The C++ code declares this with extern "C" in src/main.h (no mangling)
@_silgen_name("csync2_main")
func csync2_main(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>) -> Int32

@main
struct Csync2SwiftMain {
    static func main() {
        // Get command line arguments
        let argc = Int32(CommandLine.argc)

        // Convert Swift arguments to C-style argv
        // We need to use withUnsafeBufferPointer to pass to C
        var cArgs = CommandLine.arguments.map { strdup($0) }

        // Ensure we have a null-terminated array
        cArgs.append(nil)

        // Call csync2_main directly - no bridge needed!
        let exitCode = cArgs.withUnsafeMutableBufferPointer { buffer in
            // Cast to UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>
            let argv = buffer.baseAddress!
            return csync2_main(argc, argv)
        }

        // Free the duplicated strings
        for i in 0..<CommandLine.arguments.count {
            free(cArgs[i])
        }

        // Exit with the return code from csync2_main
        exit(exitCode)
    }
}
