//
//  main.c
//  MetersToFeetAndInchesChallenge
//
//  Created by Mathieu Rancourt on 2019-07-13.
//
// Quest: In metersToFeedAndInches(), you used floor() and subtraction to break rawFeet into its integer and fractional parts. Change metersToFeedAndInches() to use modf() instead.

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr){
    
    //This function assumes meters are non-negative.
    
    //Convert the number of meters into a floating-point number of feet.
    double x = meters * 3.28084;
    double rawFeet;
    
    //Use modf to seperate the fraction from whole number
    //Good explination on modf: https://www.tutorialspoint.com/c_standard_library/c_function_modf.htm
    double rawInch = modf(x, &rawFeet);
    double convertedInch = rawInch * 12;
    
    //Store the number of feet in the supplied address
    if (ftPtr) {
        printf("Storing %0.2f to the address %p\n", rawFeet, ftPtr);
    } *ftPtr = rawFeet;
    
    
    //Store the number of inches at the supplied address
    if (inPtr) {
        printf("Storing %.2f to the address %p\n\n", convertedInch, inPtr);
        *inPtr = convertedInch;
    }
}

int main(int argc, const char * argv[]) {

    //Variables
    double meters = 1.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.2f inches\n\nor\n\n", meters, feet, inches);

    //Convert and displat as only feet
    double convertInch = inches / 12;
    double wholeFtIn = convertInch + feet;
    printf("%f feet\n\n", wholeFtIn);
    
    //Convert and display as only inches
    double allInches = wholeFtIn * 12;
    printf("%0.2f inches\n\n", allInches);

    
    
    return 0;
}
