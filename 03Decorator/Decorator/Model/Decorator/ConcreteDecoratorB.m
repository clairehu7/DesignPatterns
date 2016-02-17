//
//  ConcreteDecoratorB.m
//  Decorator
//
//  Created by HKY on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ConcreteDecoratorB.h"

@implementation ConcreteDecoratorB

- (void)operation {
     //先运行原 Component 的 operation
    [super operation];
    //再执行本类功能,如调用 addBehavior，相当于对 Component 进行装饰
    [self addBehavior];
}

//本类独有方法，以区别于 ConcreteDecoratorA
- (void)addBehavior {
    NSLog(@"具体装饰对象 B 的操作");
}
@end
