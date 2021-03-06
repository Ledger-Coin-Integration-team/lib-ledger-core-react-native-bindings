// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

#import "LGTezosLikeTransaction+Private.h"
#import "LGTezosLikeTransaction.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGAmount+Private.h"
#import "LGBigInt+Private.h"
#import "LGTezosLikeAddress+Private.h"
#import "LGTezosOperationTag+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGTezosLikeTransaction ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::TezosLikeTransaction>&)cppRef;

@end

@implementation LGTezosLikeTransaction {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::TezosLikeTransaction>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::TezosLikeTransaction>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (LGTezosOperationTag)getType {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getType();
        return ::djinni::Enum<::ledger::core::api::TezosOperationTag, LGTezosOperationTag>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getHash {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getHash();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGAmount *)getFees {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getFees();
        return ::djinni_generated::Amount::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeAddress *)getReceiver {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getReceiver();
        return ::djinni::Optional<std::experimental::optional, ::djinni_generated::TezosLikeAddress>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeAddress *)getSender {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getSender();
        return ::djinni_generated::TezosLikeAddress::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGAmount *)getValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getValue();
        return ::djinni::Optional<std::experimental::optional, ::djinni_generated::Amount>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSData *)serialize {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->serialize();
        return ::djinni::Binary::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setSignature:(nonnull NSData *)signature {
    try {
        _cppRefHandle.get()->setSignature(::djinni::Binary::toCpp(signature));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSDate *)getDate {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getDate();
        return ::djinni::Date::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSData *)getSigningPubKey {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getSigningPubKey();
        return ::djinni::Binary::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)getCounter {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getCounter();
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGAmount *)getGasLimit {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getGasLimit();
        return ::djinni_generated::Amount::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)getStorageLimit {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getStorageLimit();
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable NSString *)getBlockHash {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getBlockHash();
        return ::djinni::Optional<std::experimental::optional, ::djinni::String>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)getStatus {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getStatus();
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto TezosLikeTransaction::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto TezosLikeTransaction::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGTezosLikeTransaction>(cpp);
}

}  // namespace djinni_generated

@end
