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
