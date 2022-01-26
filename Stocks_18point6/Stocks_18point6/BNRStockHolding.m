//
//  BNRStockHolding.m
//  Stocks_18point6
//
//  Created by yl on 2022/1/22.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}
- (void)setPurchaseSharePrice:(float)purchasePrice
{
    _purchaseSharePrice = purchasePrice;
}
- (float)currentSharePrice
{
    return _currentSharePrice;
}
- (void)setCurrentSharePrice:(float)currentPrice
{
    _currentSharePrice = currentPrice;
}
- (int)numberOfShares
{
    return _numberOfShares;
}
- (void)setNumberOfShares:(int)number
{
    _numberOfShares = number;
}

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}
@end
