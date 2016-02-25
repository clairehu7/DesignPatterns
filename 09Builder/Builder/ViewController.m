//
//  ViewController.m
//  Builder
//
//  Created by HKY on 16/2/24.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "ThinPersonView.h"
#import "FatPersonView.h"
#import "PersonDirector.h"

@interface ViewController ()
@property (strong, nonatomic) PersonView *personView;

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
    [self.view addSubview:self.personView];
    
    CGFloat personWidth = 200;
    CGFloat personHeight = 300;
    [self.personView setFrame:CGRectMake(self.view.center.x - personWidth / 2, 100, personWidth, personHeight)];
//    [self.personView setNeedsDisplay];//调试 drawRect: 方法时取消注释
}

#pragma mark - Setters & Getters

- (PersonView *)personView {
    if (!_personView) {
//        _personView = [PersonDirector creatPerson:[[ThinPersonView alloc]init]];
        _personView = [PersonDirector creatPerson:[[FatPersonView alloc]init]];
    }
    return _personView;
}

@end
