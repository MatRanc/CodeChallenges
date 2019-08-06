//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-07-24.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding



- (float)purchaseSharePrice
{
    return purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)p
{
    purchaseSharePrice = p;
}


- (float)currentSharePrice
{
    return currentSharePrice;
}

- (void)setCurrentSharePrice:(float)c
{
    currentSharePrice = c;
}



- (int)numberOfShares
{
    return numberOfShares;
}

- (void)setNumberOfShares:(int)n
{
    numberOfShares = n;
}



- (float)costInDollars
{
    float bought = [self purchaseSharePrice];
    return [self numberOfShares] * bought;
}

- (float)valueInDollars
{
    float current = [self currentSharePrice];
    return [self numberOfShares] * current;
}



@end
