// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from example.djinni

#import "TXSTextboxListener+Private.h"
#import "TXSTextboxListener.h"
#import "DJIObjcWrapperCache+Private.h"
#import "TXSItemList+Private.h"
#include <vector>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace { // anonymous namespace

class ObjcProxy final
: public ::textsort::TextboxListener
, public ::djinni::DbxObjcWrapperCache<ObjcProxy>::Handle
{
public:
    using Handle::Handle;
    void update (const ::textsort::ItemList & items) override;
};

} // end anonymous namespace

namespace djinni_generated {

auto TextboxListener::toCpp(ObjcType objc) -> CppType
{
    return objc ? djinni::DbxObjcWrapperCache<ObjcProxy>::getInstance()->get(objc) : nullptr;
}

auto TextboxListener::fromCpp(const CppType& cpp) -> ObjcType
{
    assert(!cpp || dynamic_cast<ObjcProxy*>(cpp.get()));
    return cpp ? static_cast<ObjcProxy&>(*cpp).Handle::get() : nil;
}

}  // namespace djinni_generated

void ObjcProxy::update (const ::textsort::ItemList & items)
{
    @autoreleasepool {
        TXSItemList *cpp_items = ::djinni_generated::ItemList::fromCpp(items);
        [Handle::get() update:cpp_items];
    }
}
