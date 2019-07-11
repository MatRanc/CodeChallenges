//
//  main.c
//  TwoFloats
//
//  Created by Mathieu Rancourt on 2019-06-23.
//  Copyright © 2019. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    //Declare variable nunber1
    float number1 = 9.1;
    
    //Declare variable number2
    float number2 = 4.10;
    
    //Declare sum
    float numberSum = number1+number2;
    
    //Print the numbers
    printf("Value 1 is %f and Value 2 is %f.\n", number1, number2);
    
    /*
     
This will do the same as above but its in two lines instead of the merged one. The problem is it still cannot output as a single line and its in 2 output lines. Don't know how to fix this.
     edit1: few minutes later Ive found out that the "n" in %f./n means to make a new line.
     
    //Print the numbers
    printf("Value 1 is %f.\n", number1);
    printf("Value 2 is %f.\n", number2);
     
     
This version will split it into two lines, and is written in one line... wow!
    
     //Print the numbers
     printf("Value 1 is %f.\nValue 2 is %f.\n", number1, number2);
     
     */
    
    //Add them together
    printf("The sum is %f.\n", numberSum);
    
    //Declare double
    float multiplyingValue = 2.0;
    
    //Print multiplying value
    printf("Multiplying value = %f.\n", multiplyingValue);
    
    //Multiply sum by the multioplying value
    float multipliedSum = numberSum*multiplyingValue;
    
    //Multiply by 2
    printf("The multiplied sum is %f.\n", multipliedSum);
    
    return 0;
}
