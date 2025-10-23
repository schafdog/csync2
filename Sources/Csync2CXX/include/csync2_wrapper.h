/*
 * csync2_wrapper.h - C++/Swift interoperability wrapper for csync2
 *
 * This header provides a modern C++ interface that can be consumed by Swift
 * through Swift's C++ interoperability feature.
 */

#ifndef CSYNC2_WRAPPER_H
#define CSYNC2_WRAPPER_H

#include <string>
#include <vector>
#include <memory>
#include <optional>

namespace Csync2 {

// Forward declarations
class Database;
class SyncEngine;
class NetworkManager;

/**
 * Main configuration structure for csync2
 */
struct Configuration {
    std::string hostname;
    std::string configFile;
    std::string databasePath;
    std::string port;
    bool useSSL = true;
    bool quietMode = false;
    int debugLevel = 0;

    Configuration();
    ~Configuration();
};

/**
 * File synchronization status
 */
enum class SyncStatus {
    Unknown,
    InSync,
    Modified,
    Conflict,
    Dirty,
    New
};

/**
 * File record representing a tracked file
 */
struct FileRecord {
    std::string filename;
    std::string checksum;
    SyncStatus status;
    uint64_t size;
    uint64_t modificationTime;

    FileRecord() = default;
    FileRecord(const std::string& name);
};

/**
 * Database interface wrapper
 * Provides access to the csync2 database operations
 */
class Database {
public:
    Database();
    ~Database();

    // Prevent copying
    Database(const Database&) = delete;
    Database& operator=(const Database&) = delete;

    // Allow moving
    Database(Database&&) noexcept;
    Database& operator=(Database&&) noexcept;

    bool open(const std::string& path);
    void close();
    bool isOpen() const;

    // File operations
    std::optional<FileRecord> getFile(const std::string& filename);
    bool updateFile(const FileRecord& record);
    std::vector<std::string> getDirtyFiles();

private:
    struct Impl;
    std::unique_ptr<Impl> pImpl;
};

/**
 * Sync engine wrapper
 * Handles file synchronization logic
 */
class SyncEngine {
public:
    SyncEngine(Database& db);
    ~SyncEngine();

    // Prevent copying
    SyncEngine(const SyncEngine&) = delete;
    SyncEngine& operator=(const SyncEngine&) = delete;

    bool checkFile(const std::string& filename);
    bool syncFile(const std::string& filename, const std::string& peer);
    std::vector<std::string> listDirtyFiles();

private:
    struct Impl;
    std::unique_ptr<Impl> pImpl;
};

/**
 * Network manager wrapper
 * Handles network connections and peer communication
 */
class NetworkManager {
public:
    NetworkManager();
    ~NetworkManager();

    // Prevent copying
    NetworkManager(const NetworkManager&) = delete;
    NetworkManager& operator=(const NetworkManager&) = delete;

    bool connect(const std::string& host, const std::string& port);
    void disconnect();
    bool isConnected() const;

    bool sendCommand(const std::string& command);
    std::optional<std::string> receiveResponse();

private:
    struct Impl;
    std::unique_ptr<Impl> pImpl;
};

/**
 * Main Csync2 application wrapper
 * Provides high-level API for Swift consumption
 */
class Csync2App {
public:
    explicit Csync2App(const Configuration& config);
    ~Csync2App();

    // Prevent copying
    Csync2App(const Csync2App&) = delete;
    Csync2App& operator=(const Csync2App&) = delete;

    bool initialize();
    bool shutdown();

    Database& getDatabase();
    SyncEngine& getSyncEngine();
    NetworkManager& getNetworkManager();

    // High-level operations
    bool check(const std::vector<std::string>& files);
    bool update(const std::vector<std::string>& peers);

    std::string getVersion() const;
    std::string getHostname() const;

private:
    struct Impl;
    std::unique_ptr<Impl> pImpl;
};

} // namespace Csync2

#endif // CSYNC2_WRAPPER_H
