//
//  AccessFactory.m
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "AccessFactory.h"
#import "AccessUser.h"
#import "AccessDepartment.h"

@implementation AccessFactory

- (IUser *)createUser {
    return [[AccessUser alloc]init];
}

- (IDepartment *)creatDepartment {
    return [[AccessDepartment alloc]init];
}

@end
