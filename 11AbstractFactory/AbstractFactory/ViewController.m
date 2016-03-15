//
//  ViewController.m
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "DataAccess.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *testBtn;

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

    DataAccess *dataAccess = [[DataAccess alloc]init];
    IUser *iu = [dataAccess creatUser];
    User *user = [User new];
    [iu instertUser:user];
    [iu getUserWithId:1];
    
    IDepartment *deFactory = [dataAccess creatDepartment];
    Department *dep = [[Department alloc]init];
    [deFactory instertIDpartment:dep];
    [deFactory getIDpartmentWithId:1];
}


@end
