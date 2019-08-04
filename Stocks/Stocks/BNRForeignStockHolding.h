//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-08-01.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRForeignStockHolding : BNRStockHolding



{
    
    float conversionRate;
    
}


- (float)conversionRate;
- (void)setConversionRate:(float)cr;


- (float)costInDollars;
- (float)valueInDollars;



@end

NS_ASSUME_NONNULL_END
