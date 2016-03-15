//
//  IFatory.m
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "IFactory.h"

@implementation IFactory

- (IUser *)createUser {
    return [[IUser alloc]init];
}

- (IDepartment *)creatDepartment {
    return [[IDepartment alloc]init];
}

@end
