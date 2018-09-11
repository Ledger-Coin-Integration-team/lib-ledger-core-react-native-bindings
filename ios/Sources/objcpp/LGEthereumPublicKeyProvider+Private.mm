// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ethereum_public_key_provider.djinni

#import "LGEthereumPublicKeyProvider+Private.h"
#import "LGEthereumPublicKeyProvider.h"
#import "DJIObjcWrapperCache+Private.h"
#include <stdexcept>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace djinni_generated {

class EthereumPublicKeyProvider::ObjcProxy final
: public ::ledger::core::api::EthereumPublicKeyProvider
, private ::djinni::ObjcProxyBase<ObjcType>
{
    friend class ::djinni_generated::EthereumPublicKeyProvider;
public:
    using ObjcProxyBase::ObjcProxyBase;
};

}  // namespace djinni_generated

namespace djinni_generated {

auto EthereumPublicKeyProvider::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto EthereumPublicKeyProvider::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).djinni_private_get_proxied_objc_object();
}

}  // namespace djinni_generated
