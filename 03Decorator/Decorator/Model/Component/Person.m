//
//  Person.m
//  Decorator
//
//  Created by HKY on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)show {
    NSLog(@"装饰的 %@",self.name);
}

#pragma mark - Setters & Getters 

- (void)setName:(NSString *)name {
    _name = name;
}

@end
