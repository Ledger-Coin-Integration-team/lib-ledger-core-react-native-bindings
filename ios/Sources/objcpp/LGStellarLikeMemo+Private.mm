// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#import "LGStellarLikeMemo+Private.h"
#import "LGStellarLikeMemo.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGBigInt+Private.h"
#import "LGStellarLikeMemoType+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGStellarLikeMemo ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::StellarLikeMemo>&)cppRef;

@end

@implementation LGStellarLikeMemo {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::StellarLikeMemo>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::StellarLikeMemo>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (LGStellarLikeMemoType)getMemoType {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getMemoType();
        return ::djinni::Enum<::ledger::core::api::StellarLikeMemoType, LGStellarLikeMemoType>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getMemoText {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getMemoText();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)getMemoId {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getMemoId();
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSData *)getMemoHash {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getMemoHash();
        return ::djinni::Binary::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSData *)getMemoReturn {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getMemoReturn();
        return ::djinni::Binary::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)memoValuetoString {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->memoValuetoString();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto StellarLikeMemo::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto StellarLikeMemo::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGStellarLikeMemo>(cpp);
}

}  // namespace djinni_generated

@end
