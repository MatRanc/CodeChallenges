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
        
        NSString *eggs = @"Eggs";
        NSString *bacon = @"Bacon";
        NSString *milk = @"Milk";
        NSString *bread = @"Bread";
        NSString *broccoli = @"Broccoli";
        
        NSMutableArray *groceryList = [NSMutableArray array];
      
        [groceryList addObject:eggs];
        [groceryList addObject:bacon];
        [groceryList addObject:milk];
        [groceryList addObject:bread];
        [groceryList addObject:broccoli];
        
        NSLog(@"My grocery list is:");
        for (NSMutableArray *d in groceryList){
            NSLog(@"%@", d);
            }
        
            [groceryList removeObjectAtIndex:4];
        NSLog(@"Now the grocery list is:%@", groceryList);
    
    }
    
    return 0;
}
