//
//  IUser.h
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface IUser : NSObject

- (void)instertUser:(User *)user;
- (void)getUserWithId:(NSInteger)userId;

@end
