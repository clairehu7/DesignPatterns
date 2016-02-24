//
//  ViewController.m
//  Facade
//
//  Created by HKY on 16/2/24.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "Facade.h"

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
- (IBAction)testTUI:(UIButton *)sender {
    Facade *facade = [[Facade alloc]init];
    [facade methodA];
    [facade methodB];
    [facade methodC];
}

@end
