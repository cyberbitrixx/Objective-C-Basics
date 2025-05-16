//
//  ViewController.m
//  Objective-C-Basics
//
//  Created by sofia on 03.05.2025.
//

#import "ViewController.h"

@interface ViewController ()

@end

/// Here I'm going to practice all the syntax
// Starts the logic of my actual class
@implementation ViewController

// MARK: - Data Types

// MARK: - BOOL
bool cBool = true;
BOOL myBool = YES; // Objective-C standart for Boolean values YES/NO (can also be some char's, the most important to remember - 0 should be treated as false, everything else can be treated as true)

// MARK: - Decimal numbers (float, double, CGFloat)
float floatingNumber = 3.14;
double doubleValue = 3.14384753478;
CGFloat cgFloatNumber = 3.14248978247;

short shortValue = 60000; // 32 bits integer, has a limit of -32768 to 32767



// A lifecycle method called after ViewController loads into memory
- (void)viewDidLoad {
    [super viewDidLoad];

//    MARK: - BOOL
    cBool = false;
    myBool = NO;
    NSLog(@"cBool: %d, myBool: %d", cBool, myBool);
    
    cBool = 25;
    myBool = 25;
    NSLog(@"cBool: %d, myBool: %d", cBool, myBool);
    
    cBool = 0;
    myBool = 0;
    NSLog(@"cBool: %d, myBool: %d", cBool, myBool);
    
//    MARK: - Decimal
    NSLog(@"floatingNumber: %f, doubleValue: %f, cgFloatNumber: %f", floatingNumber, doubleValue, cgFloatNumber);
    
    double result = floatingNumber + doubleValue;
    NSLog(@"result of additon: %f", result);
    
    floatingNumber = 3.1498345793487549348;
    NSLog(@"floatingNumber (large value): %f", floatingNumber);
    
    CGFloat cgFloatResult = (CGFloat)floatingNumber + doubleValue;
    NSLog(@"CGFloat result: %f", cgFloatResult);
    
//    MARK: - Short
    NSLog(@"shortValue: %d", shortValue); // This NSLog formatting will print 18 446 744 073 709 546 080 in the terminal (because %d formatting treats short data type as unsigned long)
//    To print the shortValue property correctly, %hu modifier should be used instead. For Objective-C/C Format Specifier Cheat Sheet visit https://github.com/cyberbitrixx/Studying/blob/2d5afb1ad5985f0d8cfb3c48ed64cbc695134d48/Objective-C/README.md
    NSLog(@"shortValue: %hu", shortValue); // Prints out 60000
}


// Closes the implementation block
@end
