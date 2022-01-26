//
//  main.m
//  exec_printHostName
//
//  Created by yl on 2022/1/20.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSHost *host = [NSHost currentHost];
        NSString *s = [host localizedName];
        
        NSLog(@"current host name: %@",s);
    }
    return 0;
}
