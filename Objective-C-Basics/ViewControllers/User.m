//
//  User.m
//  Objective-C-Basics
//
//  Created by sofia on 19.05.2025.
//

#import "User.h"

@implementation User

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
    self = [super init];
    
    if (self) {
        _name = [name copy];
        _age = age;
    }
    return self;
};

@end
