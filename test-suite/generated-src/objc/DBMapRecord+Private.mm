// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from map.djinni

#import "DBMapRecord+Private.h"
#import "DJIDate.h"
#import "DJIMarshal+Private.h"
#import <Foundation/Foundation.h>
#include <cassert>
#include <utility>
#include <vector>

namespace djinni_generated {

auto MapRecord::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    std::unordered_map<std::string, int64_t> map;
    for (id objcKey_0 in obj.map) {
        std::string cppKey_0 = ::djinni::String::toCpp(objcKey_0);
        int64_t cppValue_0 = ::djinni::I64::Boxed::toCpp([obj.map objectForKey:objcKey_0]);
        map.emplace(std::move(cppKey_0), std::move(cppValue_0));
    }
    return ::MapRecord(
        map);
}

auto MapRecord::fromCpp(const CppType& cpp) -> ObjcType
{
    std::vector<NSString *> mapTempKeyVector;
    mapTempKeyVector.reserve(cpp.map.size());
    std::vector<NSNumber *> mapTempValueVector;
    mapTempValueVector.reserve(cpp.map.size());
    for (const auto & cppPair_0 : cpp.map) {
        NSString *objcKey_0 = ::djinni::String::fromCpp(cppPair_0.first);
        NSNumber *objcValue_0 = ::djinni::I64::Boxed::fromCpp(cppPair_0.second);
        mapTempKeyVector.push_back(objcKey_0);
        mapTempValueVector.push_back(objcValue_0);
    }
    NSDictionary *map = [NSDictionary dictionaryWithObjects:&mapTempValueVector[0] forKeys:&mapTempKeyVector[0] count:cpp.map.size()];
    return [[DBMapRecord alloc]
        initWithMap:map];
}

}  // namespace djinni_generated
