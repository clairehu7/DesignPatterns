//
//  ViewController.m
//  Proxy
//
//  Created by 56QQ on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "Pursuit.h"
#import "Proxy.h"
#import "SchoolGirl.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startBtnTUI:(UIButton *)sender {
    Pursuit *ming = [[Pursuit alloc]init];
    Proxy *qiang = [[Proxy alloc]init];
    qiang.delegate = ming;//代理人qiang 的委托是 ming
    
    SchoolGirl *hong = [[SchoolGirl alloc]init];
    hong.name = @"小红";
    
    [qiang doProxyWithGirl:hong];
}

@end
