//
//  ConcreteDecoratorA.m
//  Decorator
//
//  Created by HKY on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ConcreteDecoratorA.h"

@implementation ConcreteDecoratorA {
    NSString *addedState;//本类独有，以区别于 ConcreteDecoratorB
}

- (void)operation {
    //先运行原 Component 的 operation
    [super operation];
    //再执行本类功能,如设置 addedState 并输出，相当于对 Component 进行装饰
    addedState = @"New State";
    NSLog(@"具体装饰对象 A 的操作");
}

@end
