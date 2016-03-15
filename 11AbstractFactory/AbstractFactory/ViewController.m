//
//  ViewController.m
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "SqlServerFactory.h"
#import "AccessFactory.h"
#import "IFactory.h"


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
//    //如果要更换数据库库，只需要把 [SqlServerFactory alloc] 改成 [AccessFactory alloc]
//    IFactory *factory = [[SqlServerFactory alloc]init];
    
    User *user = [[User alloc]init];

    IFactory *factory = [[AccessFactory alloc]init];
    IUser *iu = [factory createUser];
    [iu instertUser:user];
    [iu getUserWithId:1];
    
    Department *dep = [[Department alloc]init];
    factory = [[SqlServerFactory alloc]init];//切换数据库
    IDepartment *deFactory = [factory creatDepartment];
    [deFactory instertIDpartment:dep];
    [deFactory getIDpartmentWithId:1];
}


@end
