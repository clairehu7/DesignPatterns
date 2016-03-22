//
//  ViewController.m
//  State
//
//  Created by hukaiyin on 16/3/16.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "UIApplication+Notification.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *notAllowNotificationView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if (![[UIApplication sharedApplication] isAllowedNotification]) {
        self.notAllowNotificationView.hidden = NO;
    } else {
        self.notAllowNotificationView.hidden = YES;
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)didReceivMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)openNotificationTUI:(UIButton *)sender {
    [[UIApplication sharedApplication] openPrefsURLWithType:AppPrefsOpenURLType_AppSetting];
}

#pragma mark - Btn Methods

- (IBAction)test1TUI:(UIButton *)sender {
    [[UIApplication sharedApplication] localNotificationWithRegisterTime:5
                                                               alertBody:@"12"
                                                                userInfo:@"asdfjkwoeiuo"
                                                          repeatInterval:NSCalendarUnitMinute
                                                                     key:@"key"];
}

- (IBAction)test2TUI:(UIButton *)sender {
    
}

- (IBAction)test3TUI:(UIButton *)sender {
    [[UIApplication sharedApplication] unregisterForRemoteNotifications];
}

- (IBAction)test4TUI:(UIButton *)sender {
    NSLog(@"1221");
}

@end
