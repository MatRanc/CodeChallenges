//
//  main.c
//  Squarer
//
//  Created by Mathieu Rancourt on 2019-07-07.
//  Copyright © 2019. All rights reserved.
//

#include <stdio.h>
int main(int argc, const char * argv[]) {

    
//Define the varialbe and assign a number.
    int targetNumber = 5;
    
//What will the number do? Create a variable and assign that number to be used!
    int product = targetNumber*targetNumber;

/*  This is what will be actually displayed in the output
    The \ is the escape characer, which tells the output (/compiler) that whats before this does not have its normal meaning. So, \" indicates that the quotation does not follow the ususal printf guidelines. Closing the string with \" again tells that its not the normal meaning as there is still a newline break at the end.
 
        TLDR = When wanting quoatations for a specific part, do: \"DATA\"
 */
    printf("\"%d\" squared is \"%d\"      \n", targetNumber, product);
    return 0;
    
}
