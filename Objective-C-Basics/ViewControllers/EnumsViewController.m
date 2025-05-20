//
//  EnumsViewController.m
//  Objective-C-Basics
//
//  Created by sofia on 16.05.2025.
//

#import "EnumsViewController.h"

@interface EnumsViewController ()

@end

@implementation EnumsViewController

// MARK: Enumerations
// Objective-C supports C-like "enum" syntax, but there's a better Objective-C specific way to define enums. This way provides more type-safety and precision with how much memory we're going to use (unlike C enums):

// MARK: - Enum with default values
typedef NS_ENUM(NSInteger, LearningModeOptions) {
    randomWords, // 0
    firstWordsFirst, // 1
    alphabetOrder // 2
};

// MARK: Syntax:
// "typedef" - keyword needed to define the enum as a custom type we can use;
// NS_ENUM - obj-c keyword used instead of enum;
// (NSInteger, LearningModeOptions) - first parameter: underlying data type (what types of values will be stored inside the cases), second parameter: enumeration (type) name.

// MARK: Values in Enumerations
// Enum constants can ONLY store integer values (that's due to memory efficiency, C heritage, compilaton optimisation etc.)
// * if no explicit values provided for each case, the first case will have value 0 by default and each next case/option will have a value incremented by 1;
// * I like to think of default values as sequential values, like index numbers in arrays (0, 1, 2, 3...);
// * default values can be overriden, if a certain other value needs to be associated with each case.
// MARK: Example
// It's like the difference between:
// "Give me item #3 in the list" (position-based)
// "Give me the item with product code #8742" (meaning-based)

// MARK: - Enum with explicit values
typedef NS_ENUM(NSInteger, HTTPStatusCode) {
    HTTPStatusCodeOk = 200,
    HTTPStatusCodeNotFound = 404,
    HTTPStatusCodeServerError = 500
};

// MARK: - Why override default values?
// * When we override the default sequential values (0, 1, 2...), we're essentially saying, "I need these enum cases to represent specific numbers that have meaning outside just being sequential options."
// * Even when overriding default values, enums are still just named constants for specific integer values. The difference is:

// * Default (sequential) values: The integer represents the position/index of the option in the enum (like array indices)
// * Custom values: The integer represents some external meaning or concept that matters to your application

// MARK: - Conclusion: both default and overriden values are valid ways to identify something, they just serve different purpose.

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
