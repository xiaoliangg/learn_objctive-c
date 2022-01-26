//
//  main.m
//  TimesTwo
//
//  Created by yl on 2022/1/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 15.1 指针和指针的值
        NSDate *currentTime = nil;
        NSLog(@"currentTime is %p",currentTime);
        NSLog(@"Hello, World!");
        
        // 16.1 unicode 编码
        NSString *slogan = @"I \u2661 New York";
        NSLog(slogan);
        
        NSInteger *count = [slogan length];
        
    }
    return 0;
}
