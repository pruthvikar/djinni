// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from date.djinni

#import "DBDateRecord.h"


@implementation DBDateRecord

- (id)initWithDateRecord:(DBDateRecord *)dateRecord
{
    if (self = [super init]) {
        _createdAt = [dateRecord.createdAt copy];
    }
    return self;
}

- (id)initWithCreatedAt:(NSDate *)createdAt
{
    if (self = [super init]) {
        _createdAt = createdAt;
    }
    return self;
}


@end
