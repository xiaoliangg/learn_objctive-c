//
//  main.m
//  Stocks_18point6
//
//  Created by yl on 2022/1/22.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

// 18.6 练习
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stockList = [[NSMutableArray alloc] init];
        BNRStockHolding *stock = [[BNRStockHolding alloc] init];
        [stock setPurchaseSharePrice:2.30];
        [stock setCurrentSharePrice:4.5];
        [stock setNumberOfShares:40];
        [stockList addObject:stock];
        
        stock = [[BNRStockHolding alloc] init];
        [stock setPurchaseSharePrice:12.19];
        [stock setCurrentSharePrice:10.56];
        [stock setNumberOfShares:60];
        [stockList addObject:stock];
        
        stock = [[BNRStockHolding alloc] init];
        [stock setPurchaseSharePrice:45.10];
        [stock setCurrentSharePrice:49.51];
        [stock setNumberOfShares:210];
        [stockList addObject:stock];
        
        for(BNRStockHolding *s in stockList){
            float costInDollars = [s costInDollars];
            float valueInDollars = [s valueInDollars];
            NSLog(@"stock costInDollars is %f,valueInDollars is %f",costInDollars,valueInDollars);
        }
    }
    return 0;
}
