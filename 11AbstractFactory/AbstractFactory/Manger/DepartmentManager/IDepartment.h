//
//  IDpartment.h
//  AbstractFactory
//
//  Created by hukaiyin on 16/3/15.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Department.h"

@interface IDepartment : NSObject

- (void)instertIDpartment:(Department *)department;
- (void)getIDpartmentWithId:(NSInteger)departmentId;

@end
