#!/usr/bin/env swift

/*
 * test_digest.swift
 * Simple test to verify Swift Digest implementation
 */

import Foundation

#if os(Linux)
import Glibc
#else
import Darwin
#endif

// Create a test file
let testContent = "Hello, World! This is a test for digest calculation."
let testFile = "/tmp/test_digest_\(getpid()).txt"

// Write test content
do {
    try testContent.write(toFile: testFile, atomically: true, encoding: .utf8)
    print("Created test file: \(testFile)")
} catch {
    print("Failed to create test file: \(error)")
    exit(1)
}

// Clean up on exit
defer {
    try? FileManager.default.removeItem(atPath: testFile)
}

// Import the Digest module (will be available after build)
// For now, let's test using openssl command to verify our approach
print("\nTesting digest calculation with openssl command:")

func runCommand(_ command: String) -> String? {
    let pipe = Pipe()
    let process = Process()
    process.standardOutput = pipe
    process.standardError = pipe
    process.arguments = ["-c", command]
    process.executableURL = URL(fileURLWithPath: "/bin/sh")

    do {
        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return String(data: data, encoding: .utf8)?.trimmingCharacters(in: .whitespacesAndNewlines)
    } catch {
        return nil
    }
}

// Calculate SHA1 using openssl command as reference
if let sha1 = runCommand("openssl dgst -sha1 \(testFile) | awk '{print $2}'") {
    print("SHA1 (openssl): \(sha1)")
}

if let sha256 = runCommand("openssl dgst -sha256 \(testFile) | awk '{print $2}'") {
    print("SHA256 (openssl): \(sha256)")
}

if let md5 = runCommand("openssl dgst -md5 \(testFile) | awk '{print $2}'") {
    print("MD5 (openssl): \(md5)")
}

print("\n✅ Test file created successfully. You can now test the Swift Digest implementation.")
print("Expected SHA1 for '\(testContent)':")
if let sha1 = runCommand("echo -n '\(testContent)' | openssl dgst -sha1 | awk '{print $2}'") {
    print("  \(sha1)")
}
