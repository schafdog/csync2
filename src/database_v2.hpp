#ifndef DATABASE_V2_HPP
#define DATABASE_V2_HPP

#include <string>
#include <memory>
#include <stdexcept>
#include <variant>

// A type-safe way to represent different data types from the database.
using DbValue = std::variant<std::monostate, int, long long, double, std::string>;

/**
 * @brief An exception class for database-related errors.
 */
class DatabaseError : public std::runtime_error {
public:
    using std::runtime_error::runtime_error;
};

class ResultSet; // Forward declaration

/**
 * @brief Interface for a prepared statement.
 *
 * This class encapsulates a compiled SQL statement. It allows binding parameters
 * in a type-safe way and executing the statement. It separates execution from
 * result fetching.
 */
class PreparedStatement {
public:
    virtual ~PreparedStatement() = default;

    // Bind methods for different data types
    virtual void bind(int index, int value) = 0;
    virtual void bind(int index, long long value) = 0;
    virtual void bind(int index, double value) = 0;
    virtual void bind(int index, const std::string& value) = 0;
    virtual void bind_null(int index) = 0;

    /**
     * @brief Executes a query that returns rows (e.g., SELECT).
     * @return A unique_ptr to a ResultSet to iterate over the results.
     */
    virtual std::unique_ptr<ResultSet> execute_query() = 0;

    /**
     * @brief Executes a statement that does not return rows (e.g., INSERT, UPDATE, DELETE).
     * @return The number of rows affected.
     */
    virtual long long execute_update() = 0;
};

/**
 * @brief Interface for a result set from a query.
 *
 * This class allows iterating over the rows of a result set and retrieving
 * column data in a type-safe manner. The lifetime of the result set is
 * managed independently of the statement that created it.
 */
class ResultSet {
public:
    virtual ~ResultSet() = default;

    virtual int rows() const = 0;

    /**
     * @brief Moves the cursor to the next row in the result set.
     * @return true if there is another row to process, false otherwise.
     */
    virtual bool next() = 0;

    // Get methods for different data types by column index (1-based)
    virtual int get_int(int index) const = 0;
    virtual long long get_long(int index) const = 0;
    virtual double get_double(int index) const = 0;
    virtual std::string get_string(int index) const = 0;

    // Get methods for different data types by column name
    virtual int get_int(const std::string& name) const = 0;
    virtual long long get_long(const std::string& name) const = 0;
    virtual double get_double(const std::string& name) const = 0;
    virtual std::string get_string(const std::string& name) const = 0;
};

/**
 * @brief Interface for a database connection.
 *
 * This class represents a connection to a specific database. Its primary role
 * is to act as a factory for PreparedStatement objects.
 */

enum class DBType {
    SQLite,
    MySQL,
    PostgreSQL
};

class DatabaseConnection {
public:
    virtual ~DatabaseConnection() = default;

    virtual void *get_private_data() = 0;

    /**
     * @brief Creates a new prepared statement.
     * @param sql The SQL query to prepare.
     * @return A unique_ptr to a PreparedStatement.
     */
    virtual std::unique_ptr<PreparedStatement> prepare(const std::string& sql) = 0;

    /**
     * @brief Creates or reuses a named prepared statement.
     * @param name The name of the prepared statement.
     * @param sql The SQL query to prepare.
     * @return A shared_ptr to a PreparedStatement.
     */
    virtual std::shared_ptr<PreparedStatement> prepare(const std::string& name, const std::string& sql) = 0;

    /**
     * @brief Begins a transaction.
     */
    virtual void begin_transaction() = 0;

    /**
     * @brief Commits the current transaction.
     */
    virtual void commit() = 0;

    /**
     * @brief Rolls back the current transaction.
     */
    virtual void rollback() = 0;

    virtual void query(const std::string& sql) = 0;

  virtual DBType getType() = 0;
};

/**
 * @brief Factory function to create a database connection.
 *
 * This is how client code will get a connection without needing to know the
 * concrete implementation class.
 */


std::unique_ptr<DatabaseConnection> create_connection(const std::string& conn_string);

#endif // DATABASE_V2_HPP
