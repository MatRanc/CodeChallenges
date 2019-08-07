//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Mathieu Rancourt on 2019-08-06.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN


//https://github.com/JayDz/Big_Nerd_Ranch_Objective_c_challenges/tree/master/chapter_21 i am 100% lost
@class BNRStockHolding;

@interface BNRPortfolio : NSObject
{
    NSMutableArray* _holdings;
}

-(void) addHolding:(BNRStockHolding*) holding;

-(float) currentValue;

@end

NS_ASSUME_NONNULL_END
