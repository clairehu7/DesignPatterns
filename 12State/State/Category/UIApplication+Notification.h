//
//  UIApplication+Notification.h
//  State
//
//  Created by hukaiyin on 16/3/21.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (Notification)

typedef NS_ENUM (NSInteger,AppPrefsOpenURLType) {
    //系统设置--通知设置页面
    AppPrefsOpenURLType_SystemSetting,
    //系统设置--本APP的通知设置页面
    AppPrefsOpenURLType_AppSetting
};

/**
 *  发起本地通知
 *
 *  @param alertTime 多久后开始注册通知（发送通知）
 *  @param alertBody 在横幅显示的通知梗概
 *  @param userInfo
 *  @param repeatInterval  通知重复的时间
 */
- (void)localNotificationWithRegisterTime:(NSInteger)alertTime
                                alertBody:(NSString *)alertBody
                                 userInfo:(NSString *)userInfo
                           repeatInterval:(NSCalendarUnit)repeatInterval
                                      key:(NSString *)key;
/**
 *  取消通知
 *
 *  @param key 与发起通知时的 key 需一致
 */
- (void)cancelLocalNotificationWithKey:(NSString *)key;

/**
 *  是否允许通知
 *
 */
- (BOOL)isAllowedNotification;

/**
 *  跳转到各个系统页面
 *
 *  @param type 根据 type 决定跳到哪个页面
 *
 *  @return 是否成功跳转
 */
- (BOOL)openPrefsURLWithType:(AppPrefsOpenURLType)type;
@end
