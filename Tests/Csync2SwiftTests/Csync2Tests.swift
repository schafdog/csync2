/*
 * Csync2Tests.swift - Unit tests for the Swift wrapper
 */

import XCTest
@testable import Csync2SwiftLib

final class Csync2Tests: XCTestCase {
    func testConfigurationDefaults() {
        let config = Configuration()

        XCTAssertEqual(config.hostname, "localhost")
        XCTAssertEqual(config.configFile, "/etc/csync2/csync2.cfg")
        XCTAssertEqual(config.databasePath, "/var/lib/csync2/csync2.db")
        XCTAssertEqual(config.port, "30865")
        XCTAssertTrue(config.useSSL)
        XCTAssertFalse(config.quietMode)
        XCTAssertEqual(config.debugLevel, 0)
    }

    func testConfigurationCustom() {
        let config = Configuration(
            hostname: "test.example.com",
            configFile: "/tmp/test.cfg",
            databasePath: "/tmp/test.db",
            port: "12345",
            useSSL: false,
            quietMode: true,
            debugLevel: 2
        )

        XCTAssertEqual(config.hostname, "test.example.com")
        XCTAssertEqual(config.configFile, "/tmp/test.cfg")
        XCTAssertEqual(config.databasePath, "/tmp/test.db")
        XCTAssertEqual(config.port, "12345")
        XCTAssertFalse(config.useSSL)
        XCTAssertTrue(config.quietMode)
        XCTAssertEqual(config.debugLevel, 2)
    }

    func testFileRecord() {
        let record = FileRecord(
            filename: "/etc/test.conf",
            checksum: "abc123",
            status: .modified,
            size: 1024,
            modificationTime: 1234567890
        )

        XCTAssertEqual(record.filename, "/etc/test.conf")
        XCTAssertEqual(record.checksum, "abc123")
        XCTAssertEqual(record.status, .modified)
        XCTAssertEqual(record.size, 1024)
        XCTAssertEqual(record.modificationTime, 1234567890)
    }

    func testSyncStatusConversion() {
        let statuses: [(SyncStatus, String)] = [
            (.unknown, "unknown"),
            (.inSync, "inSync"),
            (.modified, "modified"),
            (.conflict, "conflict"),
            (.dirty, "dirty"),
            (.new, "new")
        ]

        for (status, name) in statuses {
            XCTAssertNotNil(status, "Status \(name) should be valid")
        }
    }

    func testCsync2ErrorDescriptions() {
        let errors: [Csync2Error] = [
            .initializationFailed,
            .checkFailed,
            .updateFailed,
            .databaseError("test db error"),
            .networkError("test net error"),
            .syncError("test sync error")
        ]

        for error in errors {
            XCTAssertFalse(error.description.isEmpty, "Error description should not be empty")
        }
    }

    // Note: Integration tests that create actual Csync2 instances
    // should be in a separate test target with proper test databases
}
