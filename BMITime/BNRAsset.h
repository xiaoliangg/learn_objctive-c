//
//  BNRAsset.h
//  BMITime
//
//  Created by yl on 2022/1/22.
//

#import <Foundation/Foundation.h>
@class BNREmployee;
NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

@property (nonatomic,copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;
@property (nonatomic, weak) BNREmployee *holder;
@end

NS_ASSUME_NONNULL_END
