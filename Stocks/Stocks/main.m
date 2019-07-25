//
//  main.m
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-07-24.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Setup the stocks
        BNRStockHolding *apple = [[BNRStockHolding alloc]init];
        BNRStockHolding *google = [[BNRStockHolding alloc]init];
        BNRStockHolding *tesla = [[BNRStockHolding alloc]init];
        
        //Add stocks to the array
        NSMutableArray *stockprices = [[NSMutableArray alloc]init];
        [stockprices addObject: apple];
        [stockprices addObject: google];
        [stockprices addObject: tesla];
        
        
        //Apple details
        [apple  setCurrentSharePrice:208.12];
        [apple  setPurchaseSharePrice:197.86];
        [apple  setNumberOfShares:4];
        
        NSString *appleName = @"Apple";
        float appleStockValue = [apple valueInDollars];
        float appleStockCost = [apple costInDollars];
    
        NSLog(@"Your %@ stocks were bought for %0.2f and are worth %0.2f", appleName, appleStockCost, appleStockValue);
        
        
        //Google details
        [google setCurrentSharePrice:1139.73];
        [google setPurchaseSharePrice: 1122.89];
        [google setNumberOfShares:1];
        
        NSString *googleName = @"Google";
        float googleStockValue = [google valueInDollars];
        float googleStockCost = [google costInDollars];
        
        NSLog(@"Your %@ stocks were bought for %0.2f and are worth %0.2f", googleName, googleStockCost, googleStockValue);

        
        //Tesla details
        [tesla setCurrentSharePrice:260.17];
        [tesla setPurchaseSharePrice:317.22];
        [tesla setNumberOfShares:3];
        
        NSString *teslaName = @"Tesla";
        float teslaStockValue = [tesla valueInDollars];
        float teslaStockCost = [tesla costInDollars];
        
        NSLog(@"Your %@ stocks were bought for %0.2f and are worth %0.2f", teslaName, teslaStockCost, teslaStockValue);

        
    }
    return 0;
}
