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
    
    //抽象工厂模式提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。
    //IUser 和 IDepartment 是两个抽象产品，之所以为抽象，是因为它们都可能有两种不同的实现。
    //SqlServerDepartment/AccessDepartment 就是对 IDepartment 抽象产品的具体子类实现。
    //DataAccess 取代了 IFatory/SqlServerFactory/AccessFactory，客户端不必出现 SqlServer 或 Access 字样，达到解耦的目的。
    //DataAccess 包含所有产品的创建方法，方法内返回具体产品。
}


@end
