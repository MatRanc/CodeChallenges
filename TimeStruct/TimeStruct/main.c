//
//  main.c
//  TimeStruct
//
//  Created by Mathieu Rancourt on 2019-07-14.
//

#include <stdio.h>
#include <time.h>

//Challenge: create a program to show you the time in four million seconds

int main(int argc, const char * argv[]) {

    //Today seconds
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    //Today's date
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    //Future seconds
    long fourMillionSecondsLater = secondsSince1970 + 4000000;
    printf("Four million seconds since 1970 is %ld.\n", fourMillionSecondsLater);
    
    //Create a new struct with tm called futureTime and define it with the added 4 million seconds.
    
   //Future Date
    struct tm futureTime;
    localtime_r(&fourMillionSecondsLater, &futureTime);
    printf("The date in four million seconds will be %d-%d-%d\n", futureTime.tm_mday, futureTime.tm_mon+1, futureTime.tm_year+1900);
    
    return 0;
}
