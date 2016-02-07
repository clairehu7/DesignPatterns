//
//  Operation.h
//  FactoryMethod
//
//  Created by HKY on 15/10/24.
//  Copyright © 2015年 test. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, OPERATESYMBOL) {
    
    OPERATESYMBOL_ADD,
    OPERATESYMBOL_SUB,
    OPERATESYMBOL_MUL,
    OPERATESYMBOL_DIV,
    OPERATESYMBOL_REM
    
};

@interface Operation : NSObject

+(OPERATESYMBOL)operTypeWithString:(NSString *)symStr;
-(NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB;
@end

//加法类
@interface OperationAdd : Operation
- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB;
@end

//减法类
@interface OperationSub : Operation
- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB;
@end

//乘法类
@interface OperationMul : Operation
- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB;
@end

//除法类
@interface OperationDiv : Operation
- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB;
@end

//取余类
@interface OperationRem : Operation
- (NSString *)resultWithNumberA:(float)numberA andNumberB:(float)numberB;
@end