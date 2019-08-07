//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-08-06.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//


#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@implementation BNRPortfolio

//still lost, thankfully https://github.com/JayDz/Big_Nerd_Ranch_Objective_c_challenges/tree/master/chapter_21 saved me
-(void) addHolding:(BNRStockHolding *)holding
{
    if (!_holdings)
        _holdings = [[NSMutableArray alloc]init];
    
    [_holdings addObject:holding];
}

-(float) currentValue
{
    float value = 0;
    for (BNRStockHolding* stock in _holdings) {
        float cost = [stock costInDollars];
        float market = [stock valueInDollars];
        
        value += (market - cost);
    }
    return value;
}

@end
