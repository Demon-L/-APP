//
//  AppDelegate.m
//  YX
//
//  Created by L on 2018/4/19.
//  Copyright © 2018年 L. All rights reserved.
//

#import "AppDelegate.h"
#import "NIMKit.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //推荐在程序启动的时候初始化 NIMSDK
    NSString *appKey        = @"45c6af3c98409b18a84451215d0bdd6e";
    NIMSDKOption *option    = [NIMSDKOption optionWithAppKey:appKey];
    option.apnsCername      = @"yENTERPRISE";
    option.pkCername        = @"DEMO_PUSH_KIT";
    [[NIMSDK sharedSDK] registerWithOption:option];

    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


//- (void)startNIM
//{
//    // 添加 SDK 初始化方法
//    //cerName为推送证书名，如果前期测试不需要的话，可以直接填nil
//    //目前用中卫护信测试应用
//    NSString *appKey = [[HuNTESConfig sharedConfig] appKey];
//    NSString *cerName= [[HuNTESConfig sharedConfig] cerName];
//    [[NIMSDK sharedSDK] registerWithAppID:appKey cerName:cerName];
//    
//    //注册自定义消息的解析器
//    [NIMCustomObject registerCustomDecoder:[NTESCustomAttachmentDecoder new]];
//    
//    //注册 NIMKit 自定义排版配置
//    [[NIMKit sharedKit] registerLayoutConfig:[NTESCellLayoutConfig class]];
//}



@end
