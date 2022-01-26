//
//  BNREmployee.h
//  BMITime
//
//  Created by yl on 2022/1/22.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
// @class作用：告诉编译器，程序有一个名为BNRAsset的类
@class BNRAsset;

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BNRPerson
//{
//    NSMutableArray *_assets;
//}
@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
// 此处是NSArray，而在实例变量中的声明是 NSMutableArray。NSArray表示set的实参和get的返回值的类型，NSMutableArray实例变量的类型。详见 21.3
//@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

NS_ASSUME_NONNULL_END
