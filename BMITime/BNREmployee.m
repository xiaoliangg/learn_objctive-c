//
//  BNREmployee.m
//  BMITime
//
//  Created by yl on 2022/1/22.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

// 第22章 类扩展
@interface BNREmployee()
{
    NSMutableArray *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic, copy) NSArray *assets;

@end

@implementation BNREmployee

- (void)setAssets:(NSArray *)assets
{
    _assets = [assets mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    if(!_assets){
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    for(BNRAsset *a in _assets){
        sum += [a resaleValue];
    }
    return sum;
}

- (double)yearsOfEmployment
{
    if(self.hireDate){
        // NSTimeInterval 是double类型
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs;
    }else{
        return 0;
    }
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d:$%u in assets>",self.employeeID,self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@",self);
}
@end
