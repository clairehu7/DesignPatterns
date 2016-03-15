//
//  SqlServerDepartment.m
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "SqlServerDepartment.h"

@implementation SqlServerDepartment

- (void)instertIDpartment:(Department *)department {
    NSLog(@"在 SqlServer 里为 Department 表添加一条记录");
}

- (void)getIDpartmentWithId:(NSInteger)departmentId {
    NSLog(@"在 SqlServer 根据 ID 得到一条 Department 表的记录");
}

@end
