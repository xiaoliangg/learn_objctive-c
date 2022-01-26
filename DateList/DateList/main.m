//
//  main.m
//  DateList
//
//  Created by yl on 2022/1/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *now = [NSDate now];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24*60*60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24*60*60];
        NSArray *dateList = @[now,yesterday,tomorrow];
        NSLog(@"There are %lu dates",[dateList count]);
//        NSLog(@"forth date %p",dateList[3]);
        NSLog(@"Hello, World!");
        
        // 17.4 NSMutableArray
        NSMutableArray *mutableDateList = [NSMutableArray array];
        [mutableDateList addObject:now];
        [mutableDateList addObject:tomorrow];
        [mutableDateList insertObject:yesterday atIndex:0];
        for(NSDate *d in mutableDateList){
            NSLog(@"Here is a date:%@",d);
        }
        [mutableDateList removeObjectAtIndex:0];
        NSLog(@"Now The first date is %@",mutableDateList[0]);
        
        // 17.5 旧式数组方法
        NSArray *oldArray = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        NSLog(@"The first date is %@",[oldArray objectAtIndex:0]);
    }
    return 0;
}
