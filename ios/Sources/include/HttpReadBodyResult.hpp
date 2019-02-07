// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http_client.djinni

#ifndef DJINNI_GENERATED_HTTPREADBODYRESULT_HPP
#define DJINNI_GENERATED_HTTPREADBODYRESULT_HPP

#include "../utils/optional.hpp"
#include "Error.hpp"
#include <cstdint>
#include <iostream>
#include <utility>
#include <vector>

namespace ledger { namespace core { namespace api {

/** Structure representing Http response body. */
struct HttpReadBodyResult final {
    /** Optional Error structure, error in case of http request failure. */
    std::experimental::optional<Error> error;
    /** Optional binary, data returned by http request in case of success. */
    std::experimental::optional<std::vector<uint8_t>> data;

    HttpReadBodyResult(std::experimental::optional<Error> error_,
                       std::experimental::optional<std::vector<uint8_t>> data_)
    : error(std::move(error_))
    , data(std::move(data_))
    {}

    HttpReadBodyResult(const HttpReadBodyResult& cpy) {
       this->error = cpy.error;
       this->data = cpy.data;
    }

    HttpReadBodyResult() = default;


    HttpReadBodyResult& operator=(const HttpReadBodyResult& cpy) {
       this->error = cpy.error;
       this->data = cpy.data;
       return *this;
    }

    template <class Archive>
    void load(Archive& archive) {
        archive(error, data);
    }

    template <class Archive>
    void save(Archive& archive) const {
        archive(error, data);
    }
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_HTTPREADBODYRESULT_HPP
