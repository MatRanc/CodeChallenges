//
//  main.m
//  howLongHaveIBeenAlive?
//
//  Created by Mathieu Rancourt on 2019-07-18.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//  Goal:   Use two instances of NSDate to figure out how many seconds you have been alive.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
            [comps setYear:2003];
            [comps setMonth:10];
            [comps setDay:01];
            [comps setHour:0];
            [comps setMinute:0];
            [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double secondsSinceEarlierDate = [now timeIntervalSinceDate:dateOfBirth];
        unsigned long secondsTotal = secondsSinceEarlierDate;
        double yearsSince = secondsTotal / 3.154e+7;
        
        NSLog(@"I've been alive for %lu seconds or %0.2f years", secondsTotal, yearsSince);

    }
    return 0;
}
