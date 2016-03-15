//
//  IFatory.h
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUser.h"
#import "IDepartment.h"

@interface IFactory : NSObject

- (IUser *)createUser;
- (IDepartment *)creatDepartment;

@end
