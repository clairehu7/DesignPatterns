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
        //大话设计模式中，说是改配置文件可以动态改变 dbName，在这里，可以将 dbName 存在服务端（或者友盟配置），通过获取的方式操作，不需重新编译上架，就可修改。
        self.dbName = sqlName;
    }
    return self;
}

- (IUser *)creatUser {
    IUser *iu;
    //动态获取类名
    NSString *iuClassStr = [NSString stringWithFormat:@"%@%@",self.dbName,@"User"];
    Class iuClass = NSClassFromString(iuClassStr);
    iu = [iuClass new];
    return iu;
}

- (IDepartment *)creatDepartment {
    IDepartment *dep;
    //动态获取类名
    NSString *depClassStr = [NSString stringWithFormat:@"%@%@",self.dbName,@"Department"];
    Class depClass = NSClassFromString(depClassStr);
    dep = [depClass new];
    return dep;

}

- (void)setDbName:(NSString *)dbName {
    if (![_dbName isEqualToString:dbName]) {
        _dbName = dbName;
    }
}

@end
