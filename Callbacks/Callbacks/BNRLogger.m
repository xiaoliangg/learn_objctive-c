//
//  BNRLogger.m
//  Callbacks
//
//  Created by yl on 2022/1/23.
//

#import "BNRLogger.h"

@implementation BNRLogger

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if(!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"create dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@",[self lastTimeString]);
}

// 27.4 新增异步下载的三个方法
// 收到一定字节数的数据后会被调用
- (void)connection:(NSURLConnection *)connection didReceiveData:(nonnull NSData *)data
{
    NSLog(@"received %lu bytes",[data length]);
    
    //如果NSMutableData对象还不存在，就创建它
    if(!_incomingData){
        _incomingData = [[NSMutableData alloc] init];
    }
    [_incomingData appendData:data];
}

// 最后一部分数据处理完毕后会被调用
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
//    NSString *string = [[NSString alloc] initWithBytes:_incomingData.bytes length:_incomingData.length encoding:NSUTF8StringEncoding];
    NSLog(@"string has %lu characters",[string length]);
    NSLog(@"the whole string is %@",string);
    _incomingData = nil;
}

// 获取数据失败时会被调用
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

- (void)zoneChange2:(NSNotification *) note
{
    NSLog(@"The System time zone has changed");
}
@end
