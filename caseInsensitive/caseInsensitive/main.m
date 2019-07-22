//
//  main.m
//  usingReadline
//
//  Created by Mathieu Rancourt on 2019-07-21.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

//Why does match.local work with NSRange and match work with NSComparisonResult?

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *listOfNames = @"Mathieu, Name 2, Name 3"; // a long list of names
        NSString *name = @"mathieu";
        NSComparisonResult match = [listOfNames caseInsensitiveCompare:name];
        //This way uses a new method ;)
        if (match == NSNotFound) {
            NSLog(@"No match found!");
            // Other actions to be taken
        } else {
            NSLog(@"Match found!");
            // Other actions to be taken
        }
        
    }
    return 0;
}


/*
 NSString *listOfNames = @"Obama Bruh 123"; // a long list of names
 NSString *name = @"obama";
 NSRange match = [listOfNames rangeOfString:name
 options:NSCaseInsensitiveSearch];
 //This way works as an option but not a seperate method.
 if (match.location == NSNotFound) {
 NSLog(@"No match found!");
 // Other actions to be taken
 } else {
 NSLog(@"Match found!");
 // Other actions to be taken
 }
 */

