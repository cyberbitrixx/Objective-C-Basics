//
//  IntegerViewController.m
//  Objective-C-Basics
//
//  Created by sofia on 15.05.2025.
//

#import "IntegersViewController.h"

/// Notes and practice on Integer data types in Objective-C
@interface IntegersViewController ()

@end

@implementation IntegersViewController

// MARK: - Integer data types

// MARK: - signed vs unsigned
/* All integers in Objective-C can either be signed or unsigned.
The difference is:
 - signed integers can store both negative and positive numbers, but of shorter value range;
 - unsigned integers trade-off the ability to store negative numbers so can only store positive (including 0), but allow to store 2x as bigger value than signed integer data type would;
 - "signed" and "unsigned" keywords used to specify, but all integer values (in Objective-C, C++ and C languages) are signed by default, unless specified as "unsigned" with the key word.
 */

// Architecture Dependent
char myChar = 1; // 64-bit Size: 1 byte
short myShort = 1; // 64-bit Size: 2
int myInt = 1; // 64-bit Size: 4
long myLong = 834277572894778; // 64-bit Size: 8 (would be 4 on 32-bits system, but new Apple devices use 64 bits system anyway)
long long myLongLong = 12873283732873; // 64-bit Size: 8

// MARK: - When to use:
/*  */

// Apple Data Integer Types
NSInteger myNSInteger = -2938; // Signed. 4 bytes (32), 8 bytes (64)
NSUInteger myUnsignedNSInteger = 287438947; // Unsigned (only positive values). 4 bytes (32), 8 bytes (64)

// MARK: NSInteger data type is defined as "long" and NSUInteger as "unsigned long" on 64 bit systems, because historically some API's used by Apple were returning Int instead of long they were supposed to, so Apple needed a convenient way to transition those API's from 32bit to 64bit architectures.

// MARK: Both NSInteger and NSUInteger are defined as "int" on 64 bits systems.

// MARK: When to use:
/*
 - when working with Apple code;
 - public class API's to conform to Apple standarts (for example writing an open source Apple library);
  - when want native Integer size on architecture (32 or 64 bits OS).
 */

// Explicit (when we need to make sure the data types is of a certain size, no matter what system is (32 or 64 bits))
int8_t oneByte = 8;
int16_t twoBytes = 16;
int32_t fourBytes = 32;
int64_t eightBytes = 64;

// MARK: When to use Arch Dependent and Explicit types:
/*
 - Explicit when wnat specific sized type (i.e. network programming where we want to send and recieve a certain sized type and to know exactly what's goinn on in that proccess);
 - Arch Dependent when size is not important (simple functionality like looping through an array);
 - when optimizing code for portability, since Objective-C is built on top of
C and C++ (if building C/C++ library that contains core logic of my app and no-Apple data types are needed to reuse it across platforms like making a Windows app);
 - memory optimization/avoiding memory bloat (NSInteger and NAUinteger both will be using 8 bytes on 64bits systems, and sometimes we can get away with smaller amount of memory usage like 4 bytes).
 */

// MARK: Main data types I will use:
// - NSInt, NSUInt
// - int
// - BOOL
// - CGFloat
// - NSNumber
// - NSString
// - NSArray
// - NSDictionary
// - NSDate
// - NSURL

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    MARK: Common NSLog patterns:
    NSLog(@"myInt: %d", myInt); // "%d" - for default or decimal
    NSLog(@"myNSInteger: %ld", (long)myNSInteger); // NSInteger, "%ld" - for long decimal (for 64 bit systems)
    NSLog(@"myUnsignedNSInteger: %lu", myUnsignedNSInteger); // "%lu" - long unsigned
}


@end
