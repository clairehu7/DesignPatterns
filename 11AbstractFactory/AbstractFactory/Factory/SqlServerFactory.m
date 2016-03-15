//
//  SqlServerFactory.m
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "SqlServerFactory.h"
#import "SqlServerUser.h"
#import "SqlServerDepartment.h"

@implementation SqlServerFactory

- (IUser *)createUser {
    return [[SqlServerUser alloc]init];
}

- (IDepartment *)creatDepartment {
    return [[SqlServerDepartment alloc]init];
}

@end
