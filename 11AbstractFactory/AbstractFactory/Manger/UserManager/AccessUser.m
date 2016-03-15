//
//  AccessUser.m
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "AccessUser.h"

@implementation AccessUser

- (void)instertUser:(User *)user {
    NSLog(@"在 Access 里为 User 表添加一条记录");
}

- (void)getUserWithId:(NSInteger)userId {
    NSLog(@"在 Access 根据 ID 得到一条 User 表的记录");
}

@end
