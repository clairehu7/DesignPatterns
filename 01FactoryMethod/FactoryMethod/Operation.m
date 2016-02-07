//
//  self.m
//  FactoryMethod
//
//  Created by HKY on 15/10/24.
//  Copyright © 2015年 test. All rights reserved.
//

#import "Operation.h"

@implementation OperationAdd

- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB {
    NSString *resultStr;
    resultStr = [NSString stringWithFormat:@"%f",numberA + numberB];
    return resultStr;
}

@end

@implementation OperationSub

- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB {
    NSString *resultStr;
    resultStr = [NSString stringWithFormat:@"%f",numberA - numberB];
    return resultStr;
}

@end

@implementation OperationMul

- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB {
    NSString *resultStr;
    resultStr = [NSString stringWithFormat:@"%f",numberA * numberB];
    return resultStr;
}

@end


@implementation OperationDiv

- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB {
    NSString *resultStr;
    resultStr = [NSString stringWithFormat:@"%f",numberA / numberB];
    return resultStr;
}

@end


@implementation OperationRem

- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB {
    NSString *resultStr;
    resultStr = [NSString stringWithFormat:@"%d",(int)numberA %(int)numberB];
    return resultStr;
}

@end


@interface Operation()

@end

@implementation Operation


//类方法，返回当前运算类型，因为会在实例化前调用，所以不能用实例方法
+(OPERATESYMBOL)operTypeWithString:(NSString *)symStr{
    OPERATESYMBOL operatesymbol;
    
    if ([symStr isEqualToString:@"+"]) {
        operatesymbol = OPERATESYMBOL_ADD;
    }else if ([symStr isEqualToString:@"-"]) {
        operatesymbol = OPERATESYMBOL_SUB;
    }else if ([symStr isEqualToString:@"*"]) {
        operatesymbol = OPERATESYMBOL_MUL;
    }else if ([symStr isEqualToString:@"/"]) {
        operatesymbol = OPERATESYMBOL_DIV;
    }else if ([symStr isEqualToString:@"%"]) {
        operatesymbol = OPERATESYMBOL_REM;
    }
    return operatesymbol;
}

//每一个子类需覆写这个方法，以自己的运算逻辑得出结果
-(NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB{
    NSString *resultStr = @"0";
    return resultStr;
}


@end
