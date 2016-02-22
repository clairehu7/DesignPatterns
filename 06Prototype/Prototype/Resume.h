//
//  Resume.h
//  Prototype
//
//  Created by 56QQ on 16/2/22.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Resume : NSObject<NSCopying,NSMutableCopying>

@property (nonatomic, strong) NSMutableString *name;
@property (nonatomic, strong) NSString *sex;
@property (nonatomic, strong) NSString *age;

@end
