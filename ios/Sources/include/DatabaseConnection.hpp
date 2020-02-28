// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

#ifndef DJINNI_GENERATED_DATABASECONNECTION_HPP
#define DJINNI_GENERATED_DATABASECONNECTION_HPP

#include <memory>
#include <string>

namespace ledger { namespace core { namespace api {

class DatabaseBlob;
class DatabaseStatement;

/**
 * An active connection to a database. This API is fully synchronous and all objects created by this interface need to
 * return synchronously. A connection is used to prepare statements, managing transactions and creating abstractions of
 * database objects.
 */
class DatabaseConnection {
public:
    virtual ~DatabaseConnection() {}

    /**
     * Prepare a statement object using the given SQL query. The statement object will then be responsible of executing
     * the query and handle results. Statement objects may be reused over time if their `repeatable` flag is set to true.
     * @param query A SQL query to execute (e.g. "SELECT * FROM users WHERE name = 'Joe'")
     * @param repeatable A flag to indicate whether or not the statement is repeatable
     */
    virtual std::shared_ptr<DatabaseStatement> prepareStatement(const std::string & query, bool repeatable) = 0;

    /** Begin a SQL transaction on this connection. */
    virtual void begin() = 0;

    /** End the current transaction and rollback all changes that occurred between the call of `begin` and `rollback`. */
    virtual void rollback() = 0;

    /** End the current transaction and persist all changes that occurred between the call of `begin` and `commit`. */
    virtual void commit() = 0;

    /** Close the current connection. After this call the connection should never be called again. */
    virtual void close() = 0;

    /**
     * Create a new empty blob.
     * @return An empty blob
     */
    virtual std::shared_ptr<DatabaseBlob> newBlob() = 0;

    /** Check whether the connection is still alive. */
    virtual bool isAlive() = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_DATABASECONNECTION_HPP
