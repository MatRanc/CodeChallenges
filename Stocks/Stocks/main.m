//
//  main.m
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-07-24.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        //Testing currency rates
        BNRForeignStockHolding *audi = [[BNRForeignStockHolding alloc]init];
        [audi setConversionRate:1.11];
        [audi setCurrentSharePrice:798];
        [audi setPurchaseSharePrice:782];
        [audi setNumberOfShares:1];
        
        float audiStockValue = [audi valueInDollars];
        float audiStockCost = [audi costInDollars];
        
        printf("cost before conversion = %f\ncost after conversion = %f\n\n", audiStockCost, audiStockValue);
        
        
        
        
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

        
        
    /* Im going to try and make it all work from one NSLog/printf as thats how arrays should work but for now i dont really understand and its too late for me to continue, future me this is a good site with info https://stackoverflow.com/questions/28522441/trying-to-create-a-portfolio-of-stocks-with-a-total-value-in-objective-c-but-un
         its not really info as its someone's competed one but if you take a quick glance and see how hes doing it t could help. anyway its too late and im tired and really dont want to keep typing. ok bye.
         
        NSMutableArray *allStocks = [NSMutableArray arrayWithObjects:apple, google, tesla, nil];
        
        NSLog(@"Your %@ stocks were bought for %0.2f and are worth %0.2f", apple, google, tesla);
    */
     
        
    }
    return 0;
}
