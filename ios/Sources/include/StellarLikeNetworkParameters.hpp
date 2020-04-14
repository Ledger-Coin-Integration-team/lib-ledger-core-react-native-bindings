// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from network.djinni

#ifndef DJINNI_GENERATED_STELLARLIKENETWORKPARAMETERS_HPP
#define DJINNI_GENERATED_STELLARLIKENETWORKPARAMETERS_HPP

#include <cstdint>
#include <iostream>
#include <string>
#include <utility>
#include <vector>

namespace ledger { namespace core { namespace api {

struct StellarLikeNetworkParameters final {
    /** Name of the network. */
    std::string Identifier;
    /** Address version bytes */
    std::vector<uint8_t> Version;
    /** The minimum account to enable an account */
    int64_t BaseReserve;
    /** The price of one operation in a transaction */
    int64_t BaseFee;
    /** Additional SEP to which the currency apply to */
    std::vector<std::string> AdditionalSEPs;
    /** Network passphrase used as a chain id during signature */
    std::string NetworkPassphrase;

    StellarLikeNetworkParameters(std::string Identifier_,
                                 std::vector<uint8_t> Version_,
                                 int64_t BaseReserve_,
                                 int64_t BaseFee_,
                                 std::vector<std::string> AdditionalSEPs_,
                                 std::string NetworkPassphrase_)
    : Identifier(std::move(Identifier_))
    , Version(std::move(Version_))
    , BaseReserve(std::move(BaseReserve_))
    , BaseFee(std::move(BaseFee_))
    , AdditionalSEPs(std::move(AdditionalSEPs_))
    , NetworkPassphrase(std::move(NetworkPassphrase_))
    {}

    StellarLikeNetworkParameters(const StellarLikeNetworkParameters& cpy) {
       this->Identifier = cpy.Identifier;
       this->Version = cpy.Version;
       this->BaseReserve = cpy.BaseReserve;
       this->BaseFee = cpy.BaseFee;
       this->AdditionalSEPs = cpy.AdditionalSEPs;
       this->NetworkPassphrase = cpy.NetworkPassphrase;
    }

    StellarLikeNetworkParameters() = default;


    StellarLikeNetworkParameters& operator=(const StellarLikeNetworkParameters& cpy) {
       this->Identifier = cpy.Identifier;
       this->Version = cpy.Version;
       this->BaseReserve = cpy.BaseReserve;
       this->BaseFee = cpy.BaseFee;
       this->AdditionalSEPs = cpy.AdditionalSEPs;
       this->NetworkPassphrase = cpy.NetworkPassphrase;
       return *this;
    }

    template <class Archive>
    void load(Archive& archive) {
        archive(Identifier, Version, BaseReserve, BaseFee, AdditionalSEPs, NetworkPassphrase);
    }

    template <class Archive>
    void save(Archive& archive) const {
        archive(Identifier, Version, BaseReserve, BaseFee, AdditionalSEPs, NetworkPassphrase);
    }
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_STELLARLIKENETWORKPARAMETERS_HPP