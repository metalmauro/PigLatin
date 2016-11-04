//
//  NSString+Additions.m
//  PigLatin
//
//  Created by Matthew Mauro on 2016-11-04.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "NSString+Additions.h"

@implementation NSString (Additions)


-(NSString *)sortWord:(NSString *)toSort
{
    NSString *vow = @"aeiou";
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:vow];
    NSString *firstSyll = [NSMutableString new];
    NSString *secondH = [NSMutableString new];
    
    for (NSInteger location =0; location < toSort.length; location++)
    {
        char c = [toSort characterAtIndex:location];
        if ([vowels characterIsMember:c])
        {
            firstSyll = [toSort substringWithRange:NSMakeRange(0, location)];
            secondH = [toSort substringFromIndex:location];
            break;
        }
    }
    return [NSString stringWithFormat:@"%@%@ay ", secondH, firstSyll];
}


-(NSString *)stringByPigLatinization:(NSString *)str
{
    NSArray *words = [str componentsSeparatedByString:@" "];
    NSMutableString *finalOutput = [NSMutableString new];
    
    for (NSString *s in words)
    {
        NSString *pigWord = [self sortWord:s];
        [finalOutput appendFormat:@"%@", pigWord];
    }
    return finalOutput;
}
@end
