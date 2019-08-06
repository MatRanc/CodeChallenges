//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-07-24.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject

{
    
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;

}


- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)p;

- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)c;

- (int)numberOfShares;
- (void)setNumberOfShares:(int)n;

- (float)costInDollars;
- (float)valueInDollars;


@end

NS_ASSUME_NONNULL_END

