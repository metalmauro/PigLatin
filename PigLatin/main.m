//
//  main.m
//  PigLatin
//
//  Created by Matthew Mauro on 2016-11-04.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Additions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *start = @"Change This to Pig Latin";
        
        //angeChay isThay otay igPay atinLay
        
        NSString *pig = [start stringByPigLatinization:start];
        NSLog(@"%@", pig);
        
        
    }
    return 0;
}
