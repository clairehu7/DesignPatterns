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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)didReceivMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Btn Methods

- (IBAction)bossComingTUI:(UIButton *)sender {
    [[UIApplication sharedApplication] localNotificationWithRegisterTime:1.
                                                               alertBody:@"12"
                                                                userInfo:@"收东西啦"
                                                          repeatInterval:NSCalendarUnitMinute
                                                                     key:@"key"];
}

@end
