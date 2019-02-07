// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from preferences.djinni

#import "LGPreferencesEditor+Private.h"
#import "LGPreferencesEditor.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGPreferencesEditor ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::PreferencesEditor>&)cppRef;

@end

@implementation LGPreferencesEditor {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::PreferencesEditor>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::PreferencesEditor>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable LGPreferencesEditor *)putString:(nonnull NSString *)key
                                      value:(nonnull NSString *)value {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->putString(::djinni::String::toCpp(key),
                                                             ::djinni::String::toCpp(value));
        return ::djinni_generated::PreferencesEditor::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferencesEditor *)putInt:(nonnull NSString *)key
                                   value:(int32_t)value {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->putInt(::djinni::String::toCpp(key),
                                                          ::djinni::I32::toCpp(value));
        return ::djinni_generated::PreferencesEditor::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferencesEditor *)putLong:(nonnull NSString *)key
                                    value:(int64_t)value {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->putLong(::djinni::String::toCpp(key),
                                                           ::djinni::I64::toCpp(value));
        return ::djinni_generated::PreferencesEditor::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferencesEditor *)putBoolean:(nonnull NSString *)key
                                       value:(BOOL)value {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->putBoolean(::djinni::String::toCpp(key),
                                                              ::djinni::Bool::toCpp(value));
        return ::djinni_generated::PreferencesEditor::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferencesEditor *)putStringArray:(nonnull NSString *)key
                                           value:(nonnull NSArray<NSString *> *)value {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->putStringArray(::djinni::String::toCpp(key),
                                                                  ::djinni::List<::djinni::String>::toCpp(value));
        return ::djinni_generated::PreferencesEditor::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferencesEditor *)putData:(nonnull NSString *)key
                                    value:(nonnull NSData *)value {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->putData(::djinni::String::toCpp(key),
                                                           ::djinni::Binary::toCpp(value));
        return ::djinni_generated::PreferencesEditor::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferencesEditor *)remove:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->remove(::djinni::String::toCpp(key));
        return ::djinni_generated::PreferencesEditor::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)commit {
    try {
        _cppRefHandle.get()->commit();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)clear {
    try {
        _cppRefHandle.get()->clear();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto PreferencesEditor::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto PreferencesEditor::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGPreferencesEditor>(cpp);
}

}  // namespace djinni_generated

@end
