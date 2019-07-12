//
//  main.c
//  CountdownReadline2
//
//  Created by Mathieu Rancourt on 2019-07-11.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

//Used in readline
#include <readline/readline.h>
//Used to fix an error with atoi
#include <stdlib.h>
//Default
#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    
    //Prompts user for starting number
    printf("Starting number:\n");
    //Defines variables
    const char *imputNumber = readline(NULL);
    
    
    //Promps User for dividing factor
    printf("Dividing factor:\n");
    const char *imputDividingFactor = readline(NULL);
    
    
    //Prompts user for incrementalValue
    printf("Incremental value:\n");
    const char *imputIncrementalValue = readline(NULL);
    
    int number = atoi(imputNumber);
    int dividingFactor = atoi(imputDividingFactor);
    int incrementalValue = atoi(imputIncrementalValue);
    
    
    if (incrementalValue < 0){
        printf("ERROR: code 0\n Negative numbers are forbidden, please use a positive number.\n");
        exit(1);
    }
    
//Now for the actual code.
    
    //Prints the original number
    if ( number % dividingFactor == 0 ) {
        printf("%d is divisible\n", number);
    }
    
    
        //Loop for the rest of the numbers
        for (int i = number; i > 0;) {
            
            i=i-incrementalValue;
            
            if ( i % dividingFactor == 0 ) {
                printf("%d is divisible\n", i);
            }
            
            else {
                printf("%d\n", i);
            }
            
            if (i-incrementalValue < 0){
                //Possibility to add something.
                printf(" ");
                break;
           
            
            }
    }
    return 0;
}
