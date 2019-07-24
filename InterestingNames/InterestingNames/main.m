//
//  main.m
//  InterestingNames
//
//  Created by Mathieu Rancourt on 2019-07-22.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    @autoreleasepool {
        
        // Read in a file as a huge string (ignoring the possibility of an error)
        NSString *nameString =
        [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                  encoding:NSUTF8StringEncoding
                                     error:NULL];
        NSString *wordString =
        [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                  encoding:NSUTF8StringEncoding
                                     error:NULL];
       
        //Turn that into an array
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        
        //Setup the string name to be refrencing the names array
        for (NSString *name in names){
            //Setup tje string word to be refrencing the array words
            for (NSString *word in words){
                //If the name is equal to a word, print the word and the name
                if ([name isEqualToString:word]){
                    NSLog(@"The name %@ is also the word %@", name, word);
                }
            }
        }
    }
    
    return 0; }





/* I did need help for this one as I could not understand where to start. This one works but I've modified it above. (Annotations by me)
 //Setup the word find in names
 for (NSString *validNames in names) {
 //Setup the exact same word but in word list
 for (NSString *validWords in words) {
 //If the name is equal to the word then print the name and word
 if ([validNames isEqualToString:validWords]) {
 NSLog(@"%@ is the same as %@", validNames, validWords);
 }
 }
 }
 */
