//
//  main.m
//  Stringz
//
//  Created by yl on 2022/1/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 26.1 将NSString对象写入文件
        NSMutableString *str = [[NSMutableString alloc] init];
        for(int i = 0; i<10; i++){
            [str appendString:@"liang is cool!\n"];
        }
        NSError *error;
        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        if(success){
            NSLog(@"done writing /tmp/cool.txt");
        }else{
            NSLog(@"writing /tmp/cool.txt failed:%@",[error localizedDescription]);
        }
        
        // 26.3 通过NSString读取文件
        NSError *error2;
        NSString *str2 = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf" encoding:NSASCIIStringEncoding error:&error2];
        if(!str){
            NSLog(@"read failed: %@",[error2 localizedDescription]);
        }else{
            NSLog(@"resolv.conf looks like this: %@",str2);
        }
        
    }
    return 0;
}
