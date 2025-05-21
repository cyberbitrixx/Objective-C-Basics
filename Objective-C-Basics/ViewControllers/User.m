//
//  User.m
//  Objective-C-Basics
//
//  Created by sofia on 19.05.2025.
//

#import "User.h"

/// A class I created to test some Initializers
@implementation User

// MARK: - Initializers
// "-" indicates that it's an instance method (a "+" would be used for a class method)
// "instancetype" - a keyword used to explicitly tell the compiler "This method returns an object of the same class as the class being called, not just a generic superclass type". Key benefits:
// - type safety: the compiler knows the exact type of return object;
// - better autocomplete;
// - subclass support: makes initializers work correctly with inheritance.

// "initWithName:, age:" - both method name definition and parameters names
// (NSString *)name - parameter type (pointer to an address) and local variable name
// (NSInteger)age - parameter type (simple values like Integers don't need pointers and we can work with values directly), local variable name

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
//    call initializer of the super class
    self = [super init];
    
//    checks if super init went well and we have a solid ground to initialize our own properties on. If yes - initialize name and age with arguments from our parameters
    if (self) {
        _name = [name copy];
        _age = age;
    }
//    return an instance of type User with initialized propeties
    return self;
};

@end
