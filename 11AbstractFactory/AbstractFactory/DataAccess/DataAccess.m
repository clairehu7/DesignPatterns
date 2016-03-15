//
//  DataAccess.m
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "DataAccess.h"

#import "SqlServerUser.h"
#import "AccessUser.h"

#import "SqlServerDepartment.h"
#import "AccessDepartment.h"


static NSString *sqlName = @"SqlServer";
static NSString *accessName = @"Access";

@implementation DataAccess

- (instancetype)init {
    self = [super init];
    if (self) {
        self.dbName = sqlName;
    }
    return self;
}

- (IUser *)creatUser {
    IUser *iu;
    NSArray *items = @[sqlName, accessName];
    int item = [items indexOfObject:self.dbName];
    switch (item) {
        case 0:{
            iu = [SqlServerUser new];
            break;
        }
        case 1:{
            iu = [AccessUser new];
            break;
        }
        default:
            break;
    }
    return iu;
}

- (IDepartment *)creatDepartment {
    IDepartment *dep;
    NSArray *items = @[sqlName, accessName];
    int item = [items indexOfObject:self.dbName];
    switch (item) {
        case 0:{
            dep = [SqlServerDepartment new];
            break;
        }
        case 1:{
            dep = [AccessDepartment new];
            break;
        }
        default:
            break;
    }
    return dep;

}

- (void)setDbName:(NSString *)dbName {
    if (![_dbName isEqualToString:dbName]) {
        _dbName = dbName;
    }
}

@end
