//
//  BNRAsset.m
//  BMITime
//
//  Created by yl on 2022/1/22.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
    if(self.holder){
        return [NSString stringWithFormat:@"mine:<%@,$%u,assigned to %@>",self.label,self.resaleValue,self.holder];
    }else{
        return [NSString stringWithFormat:@"mine:<%@,$%u>",self.label,self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"Deallocating %@",self);
}
@end
