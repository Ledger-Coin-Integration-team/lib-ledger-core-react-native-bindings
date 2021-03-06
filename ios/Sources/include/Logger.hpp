// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from logger.djinni

#ifndef DJINNI_GENERATED_LOGGER_HPP
#define DJINNI_GENERATED_LOGGER_HPP

#include <string>

namespace ledger { namespace core { namespace api {

/** Class to print logs to console. */
class Logger {
public:
    virtual ~Logger() {}

    /**
     * Print debug message to console.
     * @param tag, string
     * @param message, string
     */
    virtual void d(const std::string & tag, const std::string & message) = 0;

    /**
     * Print information message to console.
     * @param tag, string
     * @param message, string
     */
    virtual void i(const std::string & tag, const std::string & message) = 0;

    /**
     * Print error message to console.
     * @param tag, string
     * @param message, string
     */
    virtual void e(const std::string & tag, const std::string & message) = 0;

    /**
     * Print warning message to console.
     * @param tag, string
     * @param message, string
     */
    virtual void w(const std::string & tag, const std::string & message) = 0;

    /**
     * Print critical error message to console.
     * @param tag, string
     * @param message, string
     */
    virtual void c(const std::string & tag, const std::string & message) = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_LOGGER_HPP
