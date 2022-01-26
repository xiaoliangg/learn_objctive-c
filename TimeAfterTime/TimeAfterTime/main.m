//
//  main.m
//  TimeAfterTime
//
//  Created by yl on 2022/1/20.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *now = [NSDate date];
        NSLog(@"Hello, World,%p!",now);
        NSLog(@"The date is %@",now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since 1970",seconds);
        
        NSDate *after100000 = [now dateByAddingTimeInterval:100000];
        NSLog(@"after 100000 seconds:%@",after100000);
        
        // 14.2 NSCalendar
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@",[calendar calendarIdentifier]);
        // 14.2 多个实参
        unsigned long day = [calendar ordinalityOfUnit:NSDayCalendarUnit
                                                inUnit:NSMonthCalendarUnit
                                               forDate:now];
        NSLog(@"this is day %lu of the month",day);
        
        // 14.3 消息的嵌套发送
        double seconds2 = [[NSDate date] timeIntervalSince1970];
        NSLog(@"It has been %f seconds since 1970",seconds2);
        
        // 14.4 alloc和init
        NSDate *now2 = [[NSDate alloc] init];
        NSLog(@"The date is %@",now2);
        
        // 14.7 练习
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1990];
        [comps setMonth:3];
        [comps setDay:16];
        [comps setHour:10];
        [comps setMinute:13];
        [comps setSecond:30];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        double secondSinceBirth = [[NSDate date] timeIntervalSinceDate:dateOfBirth];
        NSLog(@"It has been %f seconds since birth",secondSinceBirth);
        
    }
    return 0;
}
