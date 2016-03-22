//
//  UIApplication+Notification.m
//  State
//
//  Created by hukaiyin on 16/3/21.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "UIApplication+Notification.h"

@implementation UIApplication (Notification)

- (void)localNotificationWithRegisterTime:(NSInteger)alertTime  alertBody:(NSString *)alertBody userInfo:(NSString *)userInfo repeatInterval:(NSCalendarUnit)repeatInterval key:(NSString *)key {
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    NSDate *fireDate = [NSDate dateWithTimeIntervalSinceNow:alertTime];
    notification.fireDate = fireDate;
    notification.timeZone = [NSTimeZone defaultTimeZone];
    notification.repeatInterval = repeatInterval;
    notification.alertBody =  alertBody;
    notification.soundName = UILocalNotificationDefaultSoundName;
    NSDictionary *userDict = [NSDictionary dictionaryWithObject:userInfo
                                                         forKey:key];
    notification.userInfo = userDict;
    notification.applicationIconBadgeNumber = 1;
    
    //注册通知
    if (![self isAllowedNotification]) {
        if ([self respondsToSelector:@selector(registerUserNotificationSettings:)]) {
            UIUserNotificationType type =  UIUserNotificationTypeAlert | UIUserNotificationTypeBadge | UIUserNotificationTypeSound;
            
            UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:type
                                                                                     categories:nil];
            [self registerUserNotificationSettings:settings];
        } else {
            
        }
    } else {
        //通知
        [self scheduleLocalNotification:notification];
    }
}

- (void)cancelLocalNotificationWithKey:(NSString *)key {
    if (key == nil) {
        [self cancelAllLocalNotifications];
        return;
    }
    // 获取所有本地通知数组
    NSArray *localNotifications = self.scheduledLocalNotifications;
    for (UILocalNotification *notification in localNotifications) {
        NSDictionary *userInfo = notification.userInfo;
        if (userInfo) {
            // 根据设置通知参数时指定的key来获取通知参数
            NSString *info = userInfo[key];
            
            // 如果找到需要取消的通知，则取消
            if (info != nil) {
                [self cancelLocalNotification:notification];
                return;
            }
        }
    }
}

#pragma mark - Utility

- (BOOL)isAllowedNotification {
    if ([[UIDevice currentDevice].systemVersion floatValue] > 8.f) {
        UIUserNotificationSettings *setting = [self currentUserNotificationSettings];
        if (UIUserNotificationTypeNone != setting.types) {
            return YES;
        }
    } else {
        UIRemoteNotificationType type = [self enabledRemoteNotificationTypes];
        if(UIRemoteNotificationTypeNone != type)
            return YES;
    }
    return NO;
}

#pragma mark - OpenURL

- (BOOL)openPrefsURLWithType:(AppPrefsOpenURLType)type {
    NSURL *url = [NSURL URLWithString:[self openURLStrWithType:type]];
    if ([self canOpenURL:url]) {
        [self openURL:url];
        return YES;
    }
    return NO;
}

//跳转到各个系统页面
- (NSString *)openURLStrWithType:(AppPrefsOpenURLType)type {
    NSString *urlStr;
    switch (type) {
        case AppPrefsOpenURLType_SystemSetting: {
            urlStr = @"prefs:root=NOTIFICATIONS_ID";
            break;
        }
        case AppPrefsOpenURLType_AppSetting: {
            urlStr = UIApplicationOpenSettingsURLString;
            break;
        }
    }
    return urlStr;
}

@end
