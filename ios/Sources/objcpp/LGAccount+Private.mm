// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "LGAccount+Private.h"
#import "LGAccount.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGAddressListCallback+Private.h"
#import "LGAmountCallback+Private.h"
#import "LGAmountListCallback+Private.h"
#import "LGBitcoinLikeAccount+Private.h"
#import "LGBlockCallback+Private.h"
#import "LGErrorCodeCallback+Private.h"
#import "LGEthereumLikeAccount+Private.h"
#import "LGEventBus+Private.h"
#import "LGLogger+Private.h"
#import "LGOperationQuery+Private.h"
#import "LGPreferences+Private.h"
#import "LGTimePeriod+Private.h"
#import "LGWalletType+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGAccount ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::Account>&)cppRef;

@end

@implementation LGAccount {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::Account>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::Account>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (int32_t)getIndex {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getIndex();
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGOperationQuery *)queryOperations {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->queryOperations();
        return ::djinni_generated::OperationQuery::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getBalance:(nullable id<LGAmountCallback>)callback {
    try {
        _cppRefHandle.get()->getBalance(::djinni_generated::AmountCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getBalanceHistory:(nonnull NSString *)start
                      end:(nonnull NSString *)end
                   period:(LGTimePeriod)period
                 callback:(nullable id<LGAmountListCallback>)callback {
    try {
        _cppRefHandle.get()->getBalanceHistory(::djinni::String::toCpp(start),
                                               ::djinni::String::toCpp(end),
                                               ::djinni::Enum<::ledger::core::api::TimePeriod, LGTimePeriod>::toCpp(period),
                                               ::djinni_generated::AmountListCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isSynchronizing {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isSynchronizing();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGEventBus *)synchronize {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->synchronize();
        return ::djinni_generated::EventBus::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferences *)getPreferences {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getPreferences();
        return ::djinni_generated::Preferences::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGLogger *)getLogger {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getLogger();
        return ::djinni_generated::Logger::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferences *)getOperationPreferences:(nonnull NSString *)uid {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getOperationPreferences(::djinni::String::toCpp(uid));
        return ::djinni_generated::Preferences::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeAccount *)asBitcoinLikeAccount {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->asBitcoinLikeAccount();
        return ::djinni_generated::BitcoinLikeAccount::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGEthereumLikeAccount *)asEthereumLikeAccount {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->asEthereumLikeAccount();
        return ::djinni_generated::EthereumLikeAccount::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isInstanceOfBitcoinLikeAccount {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isInstanceOfBitcoinLikeAccount();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isInstanceOfEthereumLikeAccount {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isInstanceOfEthereumLikeAccount();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isInstanceOfRippleLikeAccount {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isInstanceOfRippleLikeAccount();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getFreshPublicAddresses:(nullable id<LGAddressListCallback>)callback {
    try {
        _cppRefHandle.get()->getFreshPublicAddresses(::djinni_generated::AddressListCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (LGWalletType)getWalletType {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getWalletType();
        return ::djinni::Enum<::ledger::core::api::WalletType, LGWalletType>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGEventBus *)getEventBus {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getEventBus();
        return ::djinni_generated::EventBus::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)startBlockchainObservation {
    try {
        _cppRefHandle.get()->startBlockchainObservation();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)stopBlockchainObservation {
    try {
        _cppRefHandle.get()->stopBlockchainObservation();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isObservingBlockchain {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isObservingBlockchain();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getLastBlock:(nullable id<LGBlockCallback>)callback {
    try {
        _cppRefHandle.get()->getLastBlock(::djinni_generated::BlockCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getRestoreKey {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getRestoreKey();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)eraseDataSince:(nonnull NSDate *)date
              callback:(nullable id<LGErrorCodeCallback>)callback {
    try {
        _cppRefHandle.get()->eraseDataSince(::djinni::Date::toCpp(date),
                                            ::djinni_generated::ErrorCodeCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}


namespace djinni_generated {

auto Account::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Account::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGAccount>(cpp);
}

}  // namespace djinni_generated

@end
