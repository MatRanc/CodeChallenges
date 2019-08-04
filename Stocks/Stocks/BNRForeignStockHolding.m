//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-08-01.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"
#import "BNRStockHolding.h"

@implementation BNRForeignStockHolding


//Define the conversion rate ideas which will need to be implemented
- (float)conversionRate
{
    return conversionRate;
}


- (void)setConversionRate:(float)cr
{
    conversionRate = cr;
}



//Modify the costs/values to reflect the local->US currency (canada to us)
//cost and value need to be multiplied by the conversion rate




- (float)costInDollars
{
    float bought = [self purchaseSharePrice];
    float costBeforeConversion = [self numberOfShares] * bought;
    return costBeforeConversion * conversionRate;
}


- (float)valueInDollars
{
    float current = [self currentSharePrice];
    float valueBeforeConversion = [self numberOfShares] * current;
    return valueBeforeConversion * conversionRate;
}

@end



//https://www.youtube.com/watch?v=bn6S15GO-as
