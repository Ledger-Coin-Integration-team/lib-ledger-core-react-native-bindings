// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet_pool.djinni

#ifndef DJINNI_GENERATED_WALLETPOOL_HPP
#define DJINNI_GENERATED_WALLETPOOL_HPP

#include "../utils/optional.hpp"
#include <chrono>
#include <cstdint>
#include <memory>
#include <string>

namespace ledger { namespace core { namespace api {

class BlockCallback;
class CurrencyCallback;
class CurrencyListCallback;
class DatabaseBackend;
class DynamicObject;
class ErrorCodeCallback;
class EventBus;
class HttpClient;
class I32Callback;
class LogPrinter;
class Logger;
class PathResolver;
class Preferences;
class RandomNumberGenerator;
class ThreadDispatcher;
class WalletCallback;
class WalletListCallback;
class WebSocketClient;
struct Currency;

/** Class respresenting a pool of wallets. */
class WalletPool {
public:
    virtual ~WalletPool() {}

    /**
     * Create a new instance of WalletPool object.
     * @param name, string, name of the wallet pool
     * @param password, optional string, password to lock wallet pool
     * @param http, HttpClient object, http client used for all calls made by wallet pool (and aggregated wallets)
     * @param webSocketClient, WebSocketClient object, socket through which wallet pool observe and get notified (explorer, DBs ...)
     * @param pathResolver, PathResolver Object, resolve paths to logs, databases, preferences ...
     * @param logPrinter, LogPrinter object, used to dump/log for debug purpose
     * @param dispatcher, ThreadDispatcher object, responsable of dispatching task through available threads
     * @param rng, RandomNumberGenerator object, needed for generating random numbers (for seeds, salts ...)
     * @param backend, DatabseBackend object, DB in which wallet pool store all required infos (created wallets, their options, their accounts ...)
     * @param configuration, DynamicObject object, desired configuration for this wallet pool
     * @return WalletPool object, instance of WalletPool
     */
    static std::shared_ptr<WalletPool> newInstance(const std::string & name, const std::experimental::optional<std::string> & password, const std::shared_ptr<HttpClient> & httpClient, const std::shared_ptr<WebSocketClient> & webSocketClient, const std::shared_ptr<PathResolver> & pathResolver, const std::shared_ptr<LogPrinter> & logPrinter, const std::shared_ptr<ThreadDispatcher> & dispatcher, const std::shared_ptr<RandomNumberGenerator> & rng, const std::shared_ptr<DatabaseBackend> & backend, const std::shared_ptr<DynamicObject> & configuration);

    /**
     * Return used logger to dump logs in defined log path by PathResolver.
     * @return Logger object
     */
    virtual std::shared_ptr<Logger> getLogger() = 0;

    /**
     * Return the name of the wallet pool.
     * @return string
     */
    virtual std::string getName() = 0;

    /**
     * Return preferences of wallet pool (deduced from configuration).
     * @return Preferences object
     */
    virtual std::shared_ptr<Preferences> getPreferences() = 0;

    /**
     * Return number of wallets instanciated under wallet pool.
     * @param callback, Callback object returns a 32 bits integer, count of wallets
     */
    virtual void getWalletCount(const std::shared_ptr<I32Callback> & callback) = 0;

    /**
     * Get instanciated wallets having index in a given range.
     * @param from, 32 bits integer, lower bound of indices to pick
     * @param to, 32 bits integer, upper bound of indices to pick
     * @param callback, ListCallback object returns a list of Wallet objects
     */
    virtual void getWallets(int32_t from, int32_t size, const std::shared_ptr<WalletListCallback> & callback) = 0;

    /**
     * Get wallet with a giver name.
     * @param name, string, name of wallet to look for
     * @param callback, Callback object returns a Wallet object
     */
    virtual void getWallet(const std::string & name, const std::shared_ptr<WalletCallback> & callback) = 0;

    /**
     * Instanciate a new wallet under wallet pool.
     * @param name, string, name of newly created wallet
     * @param currency, Currency object, currency of the wallet
     * @param configuration, DynamicObject object, configuration of wallet (preferences)
     * @param callback, Callback object returning a Wallet object
     */
    virtual void createWallet(const std::string & name, const Currency & currency, const std::shared_ptr<DynamicObject> & configuration, const std::shared_ptr<WalletCallback> & callback) = 0;

    /**
     * Return all supported currencies by wallet pool, at least one wallet support one of returned currencies.
     * @param callback, ListCallback object, returns a list of Currency objects
     */
    virtual void getCurrencies(const std::shared_ptr<CurrencyListCallback> & callback) = 0;

    /**
     * Return currency of a specific wallet.
     * @param name, wallet's name to look for
     * @param callback, Callback object returning a Currency object
     */
    virtual void getCurrency(const std::string & name, const std::shared_ptr<CurrencyCallback> & callback) = 0;

    /**
     * Return last block of blockchain of a given currency (if it is supported by the wallet pool).
     * @param name, string, name of currency we are interested into getting it's blockchain's last block
     * @param callback, Callback object returns a Block object
     */
    virtual void getLastBlock(const std::string & currencyName, const std::shared_ptr<BlockCallback> & callback) = 0;

    /**
     * Get event bus (handler) through which wallet pool observe and gets notified (explorers, DBs ...).
     * @param EventBus object
     */
    virtual std::shared_ptr<EventBus> getEventBus() = 0;

    /**
     * Erase data (in user's DB) relative to wallet since given date.
     * @param date, start date of data deletion
     */
    virtual void eraseDataSince(const std::chrono::system_clock::time_point & date, const std::shared_ptr<ErrorCodeCallback> & callback) = 0;

    /**
     * Reset wallet pool.
     *
     * Resetting the wallet pool is an irreversible fresh reset of the whole wallet pool
     * and all of its created (sub-)objects (wallets, accounts, transactions, etc.). Please
     * consider a less destructive option before opting to use this. However, if you’re
     * looking for a way to end up as if you were in a “fresh install” situation, this is
     * the function to go to.
     *
     * Final warning: this function effectively swipes off everything. You’ve been warned.
     *
     * > Note: when calling that function, you must re-create a WalletPool as all objects
     * > got destroyed. Consider restarting / exiting your application right after calling
     * > that function. You are also highly advised to run that function on a code path
     * > that doesn’t include having lots of objects in memory.
     *
     * The return value is always true and doesn’t convey any useful information for now.
     */
    virtual void freshResetAll(const std::shared_ptr<ErrorCodeCallback> & callback) = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_WALLETPOOL_HPP
