//
//  main.c
//  Countdown2
//
//  Created by Mathieu Rancourt on 2019-07-11.
//  This time i've done all the coding.
//  Note: Although this does fuffil the challenge guidelines, It does not fully utilize continue/break in spots where it potentially could.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    
    int number = 256;
    int dividingFactor = 8;
    int incrementalValue = 3;
    
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
