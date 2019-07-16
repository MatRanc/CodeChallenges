//
//  main.m
//  computerName
//
//  Created by Mathieu Rancourt on 2019-07-16.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        //First NSHost is used to declare what is being called, *hostName is the renameing, NSHost (2nd) is the reciever and the currentHost is the sender so: currenthost is being sent to hostName from NSHost (2nd) and it knows its NSHost becuase of the first NSHost
        
        NSHost *hostName = [NSHost currentHost];
        
        
        //Again, NSString is what is being used. computerName is being made (its like int and float, making variables) hostName is being called and localizedName is the message being sent through it to computerName
       
        NSString *computerName = [hostName localizedName];
        
        
        //Finally, print the end result
        
        NSLog(@"This computer's localized name is %@", computerName);
        
        
    }
    return 0;
}



/*
 The Challenge:
 
 In this challenge, you will write a Foundation Command Line Tool that prints out the name of your computer. This program will use two classes from the Foundation framework: NSHost and NSString.
 First, you will get an instance of NSHost that has your computer’s information. Then you will ask the NSHost object for your computer’s name. Finally, you will use NSLog() to print out this name.
 Here are more details that you will need:
 • To get an instance of NSHost, send the currentHost message to the NSHost class.
 • Once you have an instance of NSHost, send it the localizedName message. The localizedName method returns a pointer to an instance of NSString. Thus, you can store the result of sending this message in a variable of type NSString *.
 • Use NSLog() and the %@ token to print out your computer’s name.
 This challenge is very much like what you did in this chapter: getting a new object, sending it a message, and storing the result of that message in a variable. Do not let the new classes and methods throw you. Also, this program can take a surprisingly long time to run.

*/
