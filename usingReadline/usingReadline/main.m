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
        
            //Promps User for dividing factor
            NSLog(@"Dividing factor:");
            const char *imputDividingFactor = readline(NULL);
            
            
            //Prompts user for incrementalValue
            NSLog(@"Incremental value:");
            const char *imputIncrementalValue = readline(NULL);
        
            int number = imputNumber;
            int dividingFactor = atoi(imputDividingFactor);
            int incrementalValue = atoi(imputIncrementalValue);
            
            
            if (incrementalValue < 0){
                NSLog(@"ERROR: Negative numbers are forbidden, please use a positive number.");
                exit(1);
            }
            
            //Now for the actual code.
            
            //Prints the original number
            if ( number % dividingFactor == 0 ) {
                NSLog(@"%d is divisible", number);
            }
            
            
            //Loop for the rest of the numbers
            for (int i = number; i > 0;) {
                
                i=i-incrementalValue;
                
                if ( i % dividingFactor == 0 ) {
                    NSLog(@"%d is divisible", i);
                }
                
                else {
                    NSLog(@"%d", i);
                }
                
                if (i-incrementalValue < 0){
                    //Possibility to add something.
                    NSLog(@" ");
                    break;
                    
                    
                }
            }
        }


        

    return 0;

}
