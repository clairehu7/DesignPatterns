//
//  ViewController.m
//  Prototype
//
//  Created by HKY on 16/2/22.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "Resume.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)testBtnTUI:(UIButton *)sender {
    Resume *resumeA = [[Resume alloc]init];
    resumeA.name = @"A";
    resumeA.age = @"43";
    resumeA.sex = @"男";
    

    Resume *resumeB = [resumeA copy];
    
    NSLog(@"\n姓名:%@\n性别:%@\n年龄:%@",resumeB.name,resumeB.age,resumeB.sex);
}

@end