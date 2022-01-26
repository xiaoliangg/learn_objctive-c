//
//  BNRLogger.h
//  Callbacks
//
//  Created by yl on 2022/1/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRLogger : NSObject
  <NSURLConnectionDelegate,NSURLConnectionDataDelegate> // 27.4 声明需要实现的协议方法

{
    // 27.4 用于异步接受下载数据
    NSMutableData *_incomingData;
}
@property (nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;
@end

NS_ASSUME_NONNULL_END
