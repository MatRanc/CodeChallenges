//
//  main.c
//  AddressesChallenge
//
//  Created by Mathieu Rancourt on 2019-07-13.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    float floatSize = 1;
    short small = -32768;
    short largest = 32767;
    unsigned short largeBoi = 65535;
   
    //float
    printf("The size of a float in bytes is %zu\n\n", sizeof(floatSize));
    
    //Smallest number a short can store
    printf("The smallest number a short can store is %d\n", small);
    //Largest number a short can store
    printf("The largest number a short can store is %d\n", largest);
    //Largest number an unsigned short can store
    printf("The largest number an unsigned short can store is %d\n\n", largeBoi);
    
    /*
    
     For a signed short, the smallest number is -32768 (2^15) and the largest is 32767 (2^15 -1)
     As the sign takes up one space it is 15 rather than 16
     
     But for an unsigned short, it can hold up to 65553 (2^16 -1) as there is no need for a sign, they are only positive.
   
     
     Why minus one?
     
     Because the counting starts from 0
     And the range of int is 2,147,483,647 and 2^32 which is 2,147,483,648. hence we subtract 1
     Also the loss of 1 bit is for the positive and negative sign
     
     https://stackoverflow.com/questions/19333581/why-does-the-range-of-int-has-a-minus-1
    
     */
    
    return 0;
}
