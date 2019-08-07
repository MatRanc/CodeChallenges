//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-08-06.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import "BNRPortfolio.h"


@implementation BNRPortfolio    

- (void)setHoldings:(NSArray *)s
{
    _holdings = [s mutableCopy];
}

- (NSArray *)holdings
{
    return [_holdings copy];
}

-(void)addHolding:(BNRStockHolding *)s
{
    if(!_holdings){
        _holdings = [[NSMutableArray alloc]init];
    }
    [_holdings addObject:s];
}

- (unsigned int)valueOfPortfolio
{
    unsigned int sum = 0;
    for (BNRStockHolding *s in _holdings){
    }
    return sum;
}

@end
