//
//  main.m
//  ImageFetch
//
//  Created by yl on 2022/1/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 26.4 将NSData对象所保存的数据写入文件。下载图片
        NSURL *url = [NSURL URLWithString:@"https://pic.rmb.bdstatic.com/bjh/68f4d68282231cedabd6db0ef1698fe8.jpeg"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        if(!data){
            NSLog(@"fetch failed: %@",[error localizedDescription]);
            return 1;
        }
        NSLog(@"the file is %lu bytes",(unsigned long)[data length]);
        BOOL written = [data writeToFile:@"/tmp/test_NSData.png" options:NSDataWritingAtomic error:&error];
        if(!written){
            NSLog(@"write failed: %@",[error localizedDescription]);
            return 1;
        }
        NSLog(@"success!");
        
        // 26.5 从文件读取数据并存入NSData对象
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/test_NSData.png"];
        NSLog(@"The file read from disk has %lu bytes",[readData length]);
        
        // 26.6 寻找特别目录
        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *desktopPath = desktops[0];
        NSLog(@"desktop path is %@",desktopPath);
    }
    return 0;
}
