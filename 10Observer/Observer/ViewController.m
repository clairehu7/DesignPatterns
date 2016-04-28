//
//  ViewController.m
//  Observer
//
//  Created by hukaiyin on 16/3/12.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "Secretary.h"
#import "StockObserver.h"

@interface ViewController ()

@end

@implementation ViewController {
    Secretary *tongzizhe;
    
    StockObserver *tongshi1;
    StockObserver *tongshi2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadVars];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Load

- (void)loadVars {
    tongzizhe = [[Secretary alloc]init];
    
    tongshi1 = [[StockObserver alloc]initWithName:@"魏关姹" Secretary:tongzizhe];
    tongshi2 = [[StockObserver alloc]initWithName:@"易管查" Secretary:tongzizhe];
}

#pragma mark - Btn Methods

- (IBAction)bossBackTUI:(UIButton *)sender {
    tongzizhe.secretaryAction = @"老板回来了";
    [tongzizhe notify];
}

@end
