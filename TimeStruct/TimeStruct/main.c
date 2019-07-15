//
//  main.c
//  TimeStruct
//
//  Created by Mathieu Rancourt on 2019-07-14.
//

#include <stdio.h>
#include <time.h>


int main(int argc, const char * argv[]) {

    long secondsSince1970 = time(NULL);
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    
    long howManySeconds = 4000000;
    
    int day = now.tm_mday;
    int month = now.tm_mon + 1;
    int year = now.tm_year + 1900;
    
    time(NULL);
    printf("%d-%d-%d\n", day, month, year);
    
    return 0;
}

/*
long secondsSince1970 = time(NULL);
printf("It has been %ld seconds since 1970\n", secondsSince1970);
struct tm now;
localtime_r(&secondsSince1970, &now);
printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
*/
