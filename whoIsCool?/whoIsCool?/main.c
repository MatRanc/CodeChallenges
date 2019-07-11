//
//  main.c
//  whoIsCool?
//
//  Created by Mathieu Rancourt on 2019-07-11.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//
#include <readline/readline.h>
#include <stdio.h>

int main(int argc, const char * argv[]) {
    

    //Ask the initial question
    printf("Who is cool?\n");
    //Set variables and allow input (readline)
    const char *name = readline(NULL);
    //Print results
    printf("%s is cool!\n\n", name);
    
    
    return 0;
}
