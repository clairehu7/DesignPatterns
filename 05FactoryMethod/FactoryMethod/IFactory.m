//
//  IFactory.m
//  FactoryMethod
//
//  Created by HKY on 16/2/18.
//  Copyright © 2016年 test. All rights reserved.
//

#import "IFactory.h"

@implementation IFactory

- (Operation *)creatOperation {
    return nil;
}

@end

//工厂方法模式（Factory Method）定义一个用于创建对象的接口，让子类决定实例化哪个类。
//如 IFactory，提供 creatOperation 接口，而 子类决定返回值 如 OperationAdd/OperationSub 等

@implementation AddFactory

- (Operation *)creatOperation {
    return [[OperationAdd alloc]init];
}

@end

@implementation SubFactory

- (Operation *)creatOperation {
    return [[OperationSub alloc]init];
}

@end

@implementation MulFactory

- (Operation *)creatOperation {
    return [[OperationMul alloc]init];
}

@end


@implementation DivFactory

- (Operation *)creatOperation {
    return [[OperationDiv alloc]init];
}

@end
