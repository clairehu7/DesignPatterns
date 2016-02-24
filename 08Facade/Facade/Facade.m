//
//  Facade.m
//  Facade
//
//  Created by HKY on 16/2/24.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Facade.h"
#import "SystemOne.h"
#import "SystemTwo.h"
#import "SystemThree.h"

@interface Facade()
@property (strong, nonatomic)SystemOne *one;
@property (strong, nonatomic)SystemTwo *two;
@property (strong, nonatomic)SystemThree *three;

@end

@implementation Facade

#pragma mark - Public

- (void)methodA {
    NSLog(@"\n方法组 A-------------------------");
    [self.one methodOne];
    [self.three methodThree];
}

- (void)methodB {
    NSLog(@"\n方法组 B-------------------------");
    [self.two methodTwo];
    [self.three methodThree];
}

- (void)methodC {
    NSLog(@"\n方法组 C-------------------------");
    [self.three methodThree];
    [self.one methodOne];
}

#pragma mark - Setters & Getters

- (SystemOne *)one {
    if (!_one) {
        _one = [[SystemOne alloc]init];
    }
    return _one;
}

- (SystemTwo *)two {
    if (!_two) {
        _two = [[SystemTwo alloc]init];
    }
    return _two;
}

- (SystemThree *)three {
    if (!_three) {
        _three = [[SystemThree alloc]init];
    }
    return _three;
}

@end
