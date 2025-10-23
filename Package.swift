// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Csync2",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        // Library product for the Swift wrapper
        .library(
            name: "Csync2SwiftLib",
            targets: ["Csync2SwiftLib"]
        ),
        // The Swift executable target that calls into C++
        .executable(
            name: "csync2-swift",
            targets: ["Csync2Swift"]
        ),
    ],
    dependencies: [
        // Add Swift dependencies here if needed
    ],
    targets: [
        // Swift library target (without main.swift)
        .target(
            name: "Csync2SwiftLib",
            dependencies: [],
            path: "Sources/Csync2Swift",
            exclude: ["main.swift"],
            linkerSettings: [
                .linkedLibrary("ssl"),
                .linkedLibrary("crypto")
            ]
        ),

        // Swift executable target (just main.swift)
        // Directly calls C++ functions with extern "C" linkage
        .executableTarget(
            name: "Csync2Swift",
            dependencies: ["Csync2SwiftLib"],
            path: "Sources/Csync2Swift",
            sources: ["main.swift"],
            linkerSettings: [
                // Link all C++ object files from src/
                .unsafeFlags([
                    // Core object files
                    "src/main.o",
                    "src/csync2.o",
                    "src/action.o",
                    "src/check.o",
                    "src/update.o",
                    "src/daemon.o",
                    "src/conn.o",
                    // Database layer
                    "src/db.o",
                    "src/db_api.o",
                    "src/db_sql.o",
                    "src/db_sqlite.o",
                    "src/db_mysql.o",
                    "src/db_postgres.o",
                    "src/database_v2.o",
                    "src/database_sqlite_v2.o",
                    "src/database_mysql_v2.o",
                    "src/database_postgres_v2.o",
                    // Utilities
                    "src/file_record.o",
                    "src/rsync.o",
                    "src/digest.o",
                    "src/error.o",
                    "src/global.o",
                    "src/getrealfn.o",
                    "src/groups.o",
                    "src/urlencode.o",
                    "src/prefixsubst.o",
                    "src/checktxt.o",
                    "src/uidgid.o",
                    "src/resolv.o",
                    "src/redis.o",
                    "src/modern_logging.o",
                    // Parser
                    "src/cfgfile_parser_processed.o",
                    "src/cfgfile_scanner.o",
                ]),
                // System libraries
                .linkedLibrary("gnutls"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("pq"),
                .linkedLibrary("mariadb"),
                .linkedLibrary("hiredis"),
                .linkedLibrary("rsync"),
                .linkedLibrary("ssl"),
                .linkedLibrary("crypto"),
                .linkedLibrary("stdc++"),
                .linkedLibrary("resolv"),
                .linkedLibrary("systemd"),
            ]
        ),

        // Swift tests
        .testTarget(
            name: "Csync2SwiftTests",
            dependencies: ["Csync2SwiftLib"]
        ),
    ]
)

// Note: This package now links the Swift executable with the full C++ implementation
// Run `make` first to build the C++ object files before `swift build`
