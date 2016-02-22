//
//  Volunteer.m
//  FactoryMethod
//
//  Created by 56QQ on 16/2/22.
//  Copyright © 2016年 test. All rights reserved.
//

#import "Volunteer.h"

@implementation Volunteer

- (void)sweep {
    [super sweep];
    [self sayName];
}

- (void)sayName {
    NSLog(@"我是志愿者");
}
@end
