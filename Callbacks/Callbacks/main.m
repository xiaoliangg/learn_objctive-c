//
//  main.m
//  Callbacks
//
//  Created by yl on 2022/1/23.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 27.2 目标-动作对
        BNRLogger *logger = [[BNRLogger alloc] init];
        // __unused 用于消除编译器警告
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        

        // 27.3 辅助对象
        NSURL *url = [NSURL URLWithString:@"https://www.jianshu.com/p/e3d7febfdc29"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
        // 27.4 通知
        [[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange2:) name:(NSSystemTimeZoneDidChangeNotification) object:nil];
        
        
        [[NSRunLoop currentRunLoop] run];
        NSLog(@"finish!!!!");

    }
    return 0;
}
