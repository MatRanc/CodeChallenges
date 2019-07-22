//
//  main.m
//  usingReadline
//
//  Created by Mathieu Rancourt on 2019-07-21.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
//Used in readline
#include <readline/readline.h>
//Used to fix an error with atoi
#include <stdlib.h>
//Default
#include <stdio.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
            //Prompts user for starting number
            NSLog(@"Starting number:");
            //Defines variables
            const char *cImputNumber = readline(NULL);
            NSString *imputNumber = [NSString stringWithUTF8String:cImputNumber];
            NSInteger imputNumberInt = [imputNumber intValue];
        

            //Promps User for dividing factor
            NSLog(@"Dividing factor:");
            const char *cImputDividingFactor = readline(NULL);
            NSString *imputDividngFactor = [NSString stringWithUTF8String:cImputDividingFactor];
            NSInteger dividingFactorInt = [imputDividngFactor intValue];
       
        
            //Prompts user for incrementalValue
            NSLog(@"Incremental value:");
            const char *cImputIncrementalValue = readline(NULL);
            NSString *imputIncrementalValue = [NSString stringWithUTF8String:cImputIncrementalValue];
            NSInteger incrementalValueInt = [imputIncrementalValue intValue];
        
            //Safety error to prevent freezing
            if (imputIncrementalValue < 0){
                NSLog(@"ERROR: Negative numbers are forbidden, please use a positive number.");
                exit(1);        }
        
        
            //Now for the actual code.
            
            //Prints the original number
            if ( imputNumberInt % dividingFactorInt == 0 ) {
                NSLog(@"%@ is divisible", imputNumber);
            }
            
        
            //Loop for the rest of the numbers
            for (NSInteger i = imputNumberInt; i > 0;) {
                
                i=i-incrementalValueInt;
                
                if ( i % dividingFactorInt == 0 ) {
                    NSLog(@"%ld is divisible", (long)i);
                }
                
                else {
                    NSLog(@"%ld", (long)i);
                }
                
                if (i-incrementalValueInt < 0){
                    //Possibility to add something.
                    NSLog(@" ");
                    break;
                    
                    
            }
        }
    }
    
    


        

    return 0;

}
