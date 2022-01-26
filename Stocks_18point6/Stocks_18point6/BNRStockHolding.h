//
//  BNRStockHolding.h
//  Stocks_18point6
//
//  Created by yl on 2022/1/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
    NSValue value;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)purchasePrice;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)currentPrice;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)number;

- (float)costInDollars;
- (float)valueInDollars;

@end

NS_ASSUME_NONNULL_END
