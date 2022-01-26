//
//  main.m
//  VowelMovement
//
//  Created by yl on 2022/1/23.
//

#import <Foundation/Foundation.h>
typedef void (^ArrayEnumerationBlock)(id,NSUInteger,BOOL *);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *oldStrings = @[@"Sauerkraut",@"Raygun",@"Big Nerd Branch",@"Mississippi"];
        NSLog(@"original String: %@",oldStrings);
        
        NSMutableArray *newStrings = [NSMutableArray array];
        
        NSArray *vowels = @[@"a",@"e",@"i",@"o",@"u"];
        
        // 28.1 声明Block变量
//        void (^devowelizer)(id,NSUInteger,BOOL *);
        ArrayEnumerationBlock devowelizer;
        
        // 28.1 将Block对象赋给变量
        devowelizer = ^(id string,NSUInteger i,BOOL *stop){
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            // 是否包含字符“y”
//            if(yRange.location != NSNotFound){
//                *stop = YES; // 执行完当前的Block对象后终止枚举过程
//                return; // 结束当前正在执行的Block对象
//            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // 枚举数组中的字符串，将所有出现的元音字母替换成空字符串
            for(NSString *s in vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
                
            }
            [newStrings addObject:newString];
        }; // Block变量赋值结束
        
        // 枚举数组对象，针对每个数组中的对象，执行Block对象devowelizer
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings:%@",newStrings);
    }
    return 0;
}
