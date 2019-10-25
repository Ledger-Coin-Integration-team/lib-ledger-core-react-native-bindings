// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from configuration.djinni

#ifndef DJINNI_GENERATED_BLOCKCHAINEXPLORERENGINES_HPP
#define DJINNI_GENERATED_BLOCKCHAINEXPLORERENGINES_HPP

#include <string>

namespace ledger { namespace core { namespace api {

/** Available API to use with explorers. */
class BlockchainExplorerEngines {
public:
    virtual ~BlockchainExplorerEngines() {}

    static std::string const LEDGER_API;

    static std::string const RIPPLE_API;

    static std::string const RIPPLE_NODE;

    static std::string const TEZOS_NODE;

    static std::string const TZSTATS_API;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_BLOCKCHAINEXPLORERENGINES_HPP
