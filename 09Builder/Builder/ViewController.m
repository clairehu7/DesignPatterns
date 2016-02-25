//
//  ViewController.m
//  Builder
//
//  Created by HKY on 16/2/24.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "PersonThinBuilder.h"
#import "PersonFatBuilder.h"
#import "PersonDirector.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Btn Methods

- (IBAction)testTUI:(UIButton *)sender {
    PersonBuilder *builder = [[PersonThinBuilder alloc]init];
    PersonView *personView = [PersonDirector creatPerson:builder];
    personView.center = self.view.center;
    [self.view addSubview:personView];
}

@end
