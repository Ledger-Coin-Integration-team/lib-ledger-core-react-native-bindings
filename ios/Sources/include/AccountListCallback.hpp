// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#ifndef DJINNI_GENERATED_ACCOUNTLISTCALLBACK_HPP
#define DJINNI_GENERATED_ACCOUNTLISTCALLBACK_HPP

#include "../utils/optional.hpp"
#include <memory>
#include <vector>

namespace ledger { namespace core { namespace api {

class Account;
struct Error;

/** Callback triggered by main completed task, returning optional result as list of template type T. */
class AccountListCallback {
public:
    virtual ~AccountListCallback() {}

    /**
     * Method triggered when main task complete.
     * @params result optional of type list<T>, non null if main task failed
     * @params error optional of type Error, non null if main task succeeded
     */
    virtual void onCallback(const std::experimental::optional<std::vector<std::shared_ptr<Account>>> & result, const std::experimental::optional<Error> & error) = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_ACCOUNTLISTCALLBACK_HPP
