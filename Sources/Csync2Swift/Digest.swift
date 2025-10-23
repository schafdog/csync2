/*
 * Digest.swift
 * Swift implementation of digest functionality for csync2
 * Uses Swift 6.2 bidirectional C++ interop
 * Cross-platform implementation using OpenSSL
 */

import Foundation

#if os(Linux)
import Glibc
#else
import Darwin
#endif

// OpenSSL C API declarations
@_silgen_name("EVP_get_digestbyname")
func EVP_get_digestbyname(_ name: UnsafePointer<CChar>) -> OpaquePointer?

@_silgen_name("EVP_MD_CTX_new")
func EVP_MD_CTX_new() -> OpaquePointer?

@_silgen_name("EVP_MD_CTX_free")
func EVP_MD_CTX_free(_ ctx: OpaquePointer?)

@_silgen_name("EVP_DigestInit_ex")
func EVP_DigestInit_ex(_ ctx: OpaquePointer?, _ type: OpaquePointer?, _ impl: OpaquePointer?) -> Int32

@_silgen_name("EVP_DigestUpdate")
func EVP_DigestUpdate(_ ctx: OpaquePointer?, _ data: UnsafeRawPointer?, _ count: Int) -> Int32

@_silgen_name("EVP_DigestFinal_ex")
func EVP_DigestFinal_ex(_ ctx: OpaquePointer?, _ md: UnsafeMutablePointer<UInt8>?, _ s: UnsafeMutablePointer<UInt32>?) -> Int32

/// Digest result - directly usable from C++
@frozen
public struct DigestResult {
    public var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8,
                      UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8,
                      UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8,
                      UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8,
                      UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8,
                      UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8,
                      UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8,
                      UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8) // 64 bytes max
    public var length: UInt32
    public var success: Bool

    public init() {
        self.data = (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
        self.length = 0
        self.success = false
    }

    /// Get digest bytes as array - Swift convenience
    public func bytes() -> [UInt8] {
        var result = [UInt8]()
        result.reserveCapacity(Int(length))
        withUnsafeBytes(of: data) { ptr in
            let buffer = ptr.bindMemory(to: UInt8.self)
            for i in 0..<Int(length) {
                result.append(buffer[i])
            }
        }
        return result
    }

    /// Convert to hex string - Swift convenience
    public func toHex() -> String {
        guard success else { return "" }
        var hexString = ""
        hexString.reserveCapacity(Int(length) * 2)
        withUnsafeBytes(of: data) { ptr in
            let buffer = ptr.bindMemory(to: UInt8.self)
            for i in 0..<Int(length) {
                hexString += String(format: "%02x", buffer[i])
            }
        }
        return hexString
    }
}

/// Main Digest struct - directly callable from C++
@frozen
public struct Digest {

    /// Compute digest from file descriptor
    /// C++ can call this directly: auto result = Digest::computeDigest(fd, "sha1");
    public static func computeDigest(fileDescriptor: Int32, algorithmName: String) -> DigestResult {
        var result = DigestResult()

        do {
            let (bytes, length) = try computeDigestInternal(fileDescriptor: fileDescriptor, algorithmName: algorithmName.lowercased())
            result.length = UInt32(length)
            result.success = true

            // Copy bytes into tuple
            withUnsafeMutableBytes(of: &result.data) { ptr in
                let buffer = ptr.bindMemory(to: UInt8.self)
                for (index, byte) in bytes.enumerated() {
                    buffer[index] = byte
                }
            }
        } catch {
            result.success = false
            result.length = 0
        }

        return result
    }

    /// Compute digest from file path
    /// C++ can call: auto result = Digest::computePathDigest("/path/to/file", "sha256");
    public static func computePathDigest(filePath: String, algorithmName: String) -> DigestResult {
        let fd = open(filePath, O_RDONLY)
        if fd < 0 {
            var result = DigestResult()
            result.success = false
            return result
        }
        defer { close(fd) }

        return computeDigest(fileDescriptor: fd, algorithmName: algorithmName)
    }

    /// Internal digest computation using OpenSSL
    private static func computeDigestInternal(fileDescriptor: Int32, algorithmName: String) throws -> ([UInt8], Int) {
        enum DigestError: Error {
            case unknownAlgorithm(String)
            case readError(Int32)
            case opensslError(String)
        }

        // Get OpenSSL digest type
        guard let md = algorithmName.withCString({ EVP_get_digestbyname($0) }) else {
            throw DigestError.unknownAlgorithm(algorithmName)
        }

        // Create digest context
        guard let mdctx = EVP_MD_CTX_new() else {
            throw DigestError.opensslError("Failed to create EVP_MD_CTX")
        }
        defer { EVP_MD_CTX_free(mdctx) }

        // Initialize digest
        guard EVP_DigestInit_ex(mdctx, md, nil) == 1 else {
            throw DigestError.opensslError("Failed to initialize digest")
        }

        // Read file and update digest
        let bufferSize = 4096
        var buffer = [UInt8](repeating: 0, count: bufferSize)

        while true {
            let bytesRead = read(fileDescriptor, &buffer, bufferSize)
            if bytesRead < 0 {
                throw DigestError.readError(errno)
            }
            if bytesRead == 0 { break }

            guard EVP_DigestUpdate(mdctx, buffer, bytesRead) == 1 else {
                throw DigestError.opensslError("Failed to update digest")
            }
        }

        // Finalize digest
        var mdValue = [UInt8](repeating: 0, count: 64)  // Max size for any digest
        var mdLen: UInt32 = 0

        guard EVP_DigestFinal_ex(mdctx, &mdValue, &mdLen) == 1 else {
            throw DigestError.opensslError("Failed to finalize digest")
        }

        return (Array(mdValue.prefix(Int(mdLen))), Int(mdLen))
    }

}
