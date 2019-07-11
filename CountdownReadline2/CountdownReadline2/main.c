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

    
    int number = 256;

    printf("%d\n", number);
        
        
for (int i = number; i > 0;) {
        
        i--;
        
        printf("%d\n", i);
    
        i=i-3;
    
    
    if ( i % 8 == 0) {
        printf("%d  -- divisibl!\n", i);
    }

}
    
    return 0;
}
