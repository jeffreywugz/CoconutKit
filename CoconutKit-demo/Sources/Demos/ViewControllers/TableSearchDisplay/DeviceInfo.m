//
//  DeviceInfo.m
//  CoconutKit-demo
//
//  Created by Samuel Défago on 2/14/11.
//  Copyright 2011 Hortis. All rights reserved.
//

#import "DeviceInfo.h"

@interface DeviceInfo ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) DeviceType type;

@end

@implementation DeviceInfo

#pragma mark Class methods

+ (DeviceInfo *)deviceInfoWithName:(NSString *)name type:(DeviceType)type
{
    return [[[self class] alloc] initWithName:name type:type];
}

#pragma mark Object creation and destruction

- (id)initWithName:(NSString *)name type:(DeviceType)type
{
    if ((self = [super init])) {
        self.name = name;
        self.type = type;
    }
    return self;
}

- (id)init
{
    HLSForbiddenInheritedMethod();
    return nil;
}

@end
