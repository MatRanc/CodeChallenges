//
//  main.m
//  Groceries
//
//  Created by Mathieu Rancourt on 2019-07-22.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Define all my strings
        NSString *eggs = @"Eggs";
        NSString *bacon = @"Bacon";
        NSString *milk = @"Milk";
        NSString *bread = @"Bread";
        NSString *broccoli = @"Broccoli";
        
        //Set up the array
        NSMutableArray *groceryList = [NSMutableArray array];
      
        //Add all the groceries to the array
        [groceryList addObject:eggs];
        [groceryList addObject:bacon];
        [groceryList addObject:milk];
        [groceryList addObject:bread];
        [groceryList addObject:broccoli];
        
        //Print the array using the fast method
        NSLog(@"My grocery list is:");
        for (NSMutableArray *d in groceryList){
            NSLog(@"%@", d);
            }
        
        //Remove something from the list and reprint
            [groceryList removeObjectAtIndex:4];
        NSLog(@"Now the grocery list is:%@", groceryList);
    
    }
    
    return 0;
}


/*
 
 Challenge: A grocery list
 Create a new Foundation Command Line Tool named Groceries. Start by creating an empty NSMutableArray object. Then add several grocery-like strings to the array. (You will have to create those, too.) Finally, use fast enumeration to print out your grocery list.
 My grocery list is:
 Loaf of bread
 Container of milk
 Stick of butter
 
 */
