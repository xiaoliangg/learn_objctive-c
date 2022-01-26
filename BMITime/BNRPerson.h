//
//  BNRPerson.h
//  BMITime
//
//  Created by yl on 2022/1/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

{
    // 声明实例变量
    float _heightInMeters;
    int _weightInKilos;
}

// 实例方法声明
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

- (float)bodyMassIndex;
@end

NS_ASSUME_NONNULL_END
