//
//  main.c
//  howMuchMemory
//
//  Created by Mathieu Rancourt on 2019-07-11.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    float i = 1;
    short int a = 1;
    
    printf("A float takes %zu bytes of RAM\n", sizeof(i));
    
    printf("A short int takes %zu bytes of RAM\n", sizeof(a));
    
    
    return 0;
}
