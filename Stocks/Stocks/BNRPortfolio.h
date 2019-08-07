//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-08-06.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@class BNRStockHolding;

@interface BNRPortfolio : NSObject
{
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray* _holdings;
- (void)addHolding:(BNRStockHolding *)s;
- (unsigned int)valueOfPortfolio;

@end

NS_ASSUME_NONNULL_END
