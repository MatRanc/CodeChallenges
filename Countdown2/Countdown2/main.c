//
//  main.c
//  Countdown2
//
//  Created by Mathieu Rancourt on 2019-07-11.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    
    int number = 256;
    
    for (int i = number; i > 0;) {
        
        
        printf("%d\n", i);
        
        i=i-3;
        
        if ( i % 8 == 0) {
            printf("%d  -- divisible!\n", i);
        }
        
    }
    
    return 0;
}
