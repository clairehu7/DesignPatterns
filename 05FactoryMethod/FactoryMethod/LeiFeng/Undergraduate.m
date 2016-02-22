//
//  Undergraduate.m
//  FactoryMethod
//
//  Created by 56QQ on 16/2/22.
//  Copyright © 2016年 test. All rights reserved.
//

#import "Undergraduate.h"

@implementation Undergraduate
- (void)sweep {
    [super sweep];
    [self showID];
}

- (void)showID {
    NSLog(@"我是学生");
}

@end
