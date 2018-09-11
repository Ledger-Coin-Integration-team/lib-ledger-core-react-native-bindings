// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from preferences.djinni

#import "LGPreferences+Private.h"
#import "LGPreferences.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGPreferencesEditor+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGPreferences ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::Preferences>&)cppRef;

@end

@implementation LGPreferences {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::Preferences>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::Preferences>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSString *)getString:(nonnull NSString *)key
                  fallbackValue:(nonnull NSString *)fallbackValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getString(::djinni::String::toCpp(key),
                                                             ::djinni::String::toCpp(fallbackValue));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)getInt:(nonnull NSString *)key
    fallbackValue:(int32_t)fallbackValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getInt(::djinni::String::toCpp(key),
                                                          ::djinni::I32::toCpp(fallbackValue));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int64_t)getLong:(nonnull NSString *)key
     fallbackValue:(int64_t)fallbackValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getLong(::djinni::String::toCpp(key),
                                                           ::djinni::I64::toCpp(fallbackValue));
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)getBoolean:(nonnull NSString *)key
     fallbackValue:(BOOL)fallbackValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getBoolean(::djinni::String::toCpp(key),
                                                              ::djinni::Bool::toCpp(fallbackValue));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray<NSString *> *)getStringArray:(nonnull NSString *)key
                                  fallbackValue:(nonnull NSArray<NSString *> *)fallbackValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getStringArray(::djinni::String::toCpp(key),
                                                                  ::djinni::List<::djinni::String>::toCpp(fallbackValue));
        return ::djinni::List<::djinni::String>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSData *)getData:(nonnull NSString *)key
              fallbackValue:(nonnull NSData *)fallbackValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getData(::djinni::String::toCpp(key),
                                                           ::djinni::Binary::toCpp(fallbackValue));
        return ::djinni::Binary::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)contains:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->contains(::djinni::String::toCpp(key));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferencesEditor *)edit {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->edit();
        return ::djinni_generated::PreferencesEditor::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto Preferences::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Preferences::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGPreferences>(cpp);
}

}  // namespace djinni_generated

@end
