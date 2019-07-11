//
//  main.c
//  Countdown
//
//  Created by Mathieu Rancourt on 2019-07-08.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
        //sets up i as 99, if i is greater than 0 do the following and take one away from i every time
    for (int i = 99; i >= 0; i--) {
       //prints the number
        printf("%d\n", i);
        //decreases by i by 3 every time
        i=i-3;
        //if the number is divisable by 5, the code will continue while printing the found one output instead of "break" which would skip the rest
        if (i % 5 == 0) {
            continue;
        }
        printf("%d  --  Found one!\n", i);
    }
    
    
    return 0;
}







/* Old code:
 
 int main(int argc, const char * argv[]) {
 int num=99;                                 // Define number to count backward
 
 do {
 printf("The current number is %d\n", num);
 num = num - 3;
 }
 while (num > 0);
 
 
 
 
 return 0;
 }
 */
