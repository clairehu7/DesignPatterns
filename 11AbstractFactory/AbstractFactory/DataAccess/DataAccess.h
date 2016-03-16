//
//  DataAccess.h
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUser.h"
#import "IDepartment.h"


@interface DataAccess : NSObject

- (IUser *)creatUser;
- (IDepartment *)creatDepartment;

@property (nonatomic, strong, readonly) NSString *dbName;

@end
