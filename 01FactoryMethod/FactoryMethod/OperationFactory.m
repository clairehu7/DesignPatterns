//
//  OperationFactory.m
//  FactoryMethod
//
//  Created by HKY on 15/10/26.
//  Copyright © 2015年 test. All rights reserved.
//

#import "OperationFactory.h"

@implementation OperationFactory

+ (Operation *)creatOperationWithSymbol:(NSString *)symbolStr {
    Operation *operation;
    
    OPERATESYMBOL operatesymbol = [Operation operTypeWithString:symbolStr];
    
    //以不同的入参判断需实例化哪一个 Operation 子类
    switch (operatesymbol) {
        case OPERATESYMBOL_ADD: {
            operation = [[OperationAdd alloc]init];
            break;
        }
        case OPERATESYMBOL_SUB: {
            operation = [[OperationSub alloc]init];
            break;
        }
        case OPERATESYMBOL_MUL: {
            operation = [[OperationMul alloc]init];
            break;
        }
        case OPERATESYMBOL_DIV: {
            operation = [[OperationDiv alloc]init];
            break;
        }
        case OPERATESYMBOL_REM: {
            operation = [[OperationRem alloc]init];
            break;
        }
        default: {
            break;
        }
    }
    return operation;
}

@end
