//
//  main.c
//  CountdownReadline
//
//  Created by Mathieu Rancourt on 2019-07-11.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//
#include <readline/readline.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    //Ask for starting number
    printf("Imput a starting number:\n");
    
    //defines variable and then asks for a number using readline(NULL)
    const char *imputNumber = readline(NULL);
    
    //defines another variable which allows the last imput to be converted into integers using "atoi" and uses that in the rest of the code
    int startingNumber = atoi(imputNumber);
    
    //sets up i as 99, if i is greater than 0 do the following and take one away from i every time
    for (int i = startingNumber; i >= 0;) {
       
        i--;
        
        //prints the number
        printf("%d\n", i);
        
    
    //decreases i by 3 every time
        i=i-3;
        
    //if the number is divisable by 5, the code will continue while printing the found one output instead of "break" which would skip the rest
        if (i % 8 == 0) {
            printf("%d  --  Found one!\n", i);
   
        
        
        
            
        
        }
}
    
    return 0;
}
