//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by yl on 2022/1/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 31.7
    // 创建并设置UIWindow对象
    // CGRect是C结构，其下的两个成员也是C结构：origin(x,y)和size(width,height)
    CGRect winframe = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:winframe];
    self.window = theWindow;
    
    // 设置三个UI对象的frame属性
    // CGRectMake()函数可以创建CGRect结构，参数是(x,y,width,height);
    CGRect tableFrame = CGRectMake(0, 80, winframe.size.width, winframe.size.height-100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);

    // 创建并设置UITableView对象
    self.
    
    return YES;
}


    #pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
