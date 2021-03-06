// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import "LGBitcoinLikeOutput+Private.h"
#import "LGBitcoinLikeOutput.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGAmount+Private.h"
#import "LGBitcoinLikeScript+Private.h"
#import "LGDerivationPath+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGBitcoinLikeOutput ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::BitcoinLikeOutput>&)cppRef;

@end

@implementation LGBitcoinLikeOutput {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::BitcoinLikeOutput>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::BitcoinLikeOutput>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSString *)getTransactionHash {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getTransactionHash();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)getOutputIndex {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getOutputIndex();
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGAmount *)getValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getValue();
        return ::djinni_generated::Amount::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSData *)getScript {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getScript();
        return ::djinni::Binary::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeScript *)parseScript {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->parseScript();
        return ::djinni_generated::BitcoinLikeScript::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable NSString *)getAddress {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getAddress();
        return ::djinni::Optional<std::experimental::optional, ::djinni::String>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGDerivationPath *)getDerivationPath {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getDerivationPath();
        return ::djinni::Optional<std::experimental::optional, ::djinni_generated::DerivationPath>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable NSNumber *)getBlockHeight {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getBlockHeight();
        return ::djinni::Optional<std::experimental::optional, ::djinni::I64>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isReplaceable {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isReplaceable();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto BitcoinLikeOutput::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto BitcoinLikeOutput::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGBitcoinLikeOutput>(cpp);
}

}  // namespace djinni_generated

@end
