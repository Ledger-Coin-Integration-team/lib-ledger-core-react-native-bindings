// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from erc20.djinni

#import "LGERC20LikeAccount+Private.h"
#import "LGERC20LikeAccount.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGBigInt+Private.h"
#import "LGERC20LikeOperation+Private.h"
#import "LGERC20Token+Private.h"
#import "LGOperationQuery+Private.h"
#import "LGTimePeriod+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGERC20LikeAccount ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::ERC20LikeAccount>&)cppRef;

@end

@implementation LGERC20LikeAccount {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::ERC20LikeAccount>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::ERC20LikeAccount>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull LGERC20Token *)getToken {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getToken();
        return ::djinni_generated::ERC20Token::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getAddress {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getAddress();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)getBalance {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getBalance();
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray<LGBigInt *> *)getBalanceHistoryFor:(nonnull NSDate *)start
                                                  end:(nonnull NSDate *)end
                                               period:(LGTimePeriod)period {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getBalanceHistoryFor(::djinni::Date::toCpp(start),
                                                                        ::djinni::Date::toCpp(end),
                                                                        ::djinni::Enum<::ledger::core::api::TimePeriod, LGTimePeriod>::toCpp(period));
        return ::djinni::List<::djinni_generated::BigInt>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray<LGERC20LikeOperation *> *)getOperations {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getOperations();
        return ::djinni::List<::djinni_generated::ERC20LikeOperation>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSData *)getTransferToAddressData:(nullable LGBigInt *)amount
                                     address:(nonnull NSString *)address {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getTransferToAddressData(::djinni_generated::BigInt::toCpp(amount),
                                                                            ::djinni::String::toCpp(address));
        return ::djinni::Binary::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGOperationQuery *)queryOperations {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->queryOperations();
        return ::djinni_generated::OperationQuery::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto ERC20LikeAccount::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto ERC20LikeAccount::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGERC20LikeAccount>(cpp);
}

}  // namespace djinni_generated

@end