//
//  CashSuper.m
//  Strategy
//
//  Created by HKY on 15/10/27.
//  Copyright © 2015年 test. All rights reserved.
//

#import "CashSuper.h"

@implementation CashSuper

- (NSString *)resultWithUnitPrice:(NSString *)unitPriceStr
                 merchandiseCount:(NSString *)merchandiseCountStr{
    
    return @"没有具体产品";
}

@end

//正常收费
@implementation CashNormal

- (NSString *)resultWithUnitPrice:(NSString *)unitPriceStr
                 merchandiseCount:(NSString *)merchandiseCountStr {
    NSInteger unitPrice        = [unitPriceStr integerValue];
    NSInteger merchandiseCount = [merchandiseCountStr integerValue];
    
    NSInteger result = unitPrice * merchandiseCount;
    return [NSString stringWithFormat:@"%ld",(long)result];
}

@end


//打折
@implementation CashRebate{
    NSString *rebateStr;/**<打几折*/
}

- (instancetype)initWithRebate:(NSString *)rebate {
    self = [super init];
    if (self) {
        rebateStr = rebate;
    }
    return self;
}

- (NSString *)resultWithUnitPrice:(NSString *)unitPriceStr
                 merchandiseCount:(NSString *)merchandiseCountStr {
    NSInteger unitPrice        = [unitPriceStr integerValue];
    NSInteger merchandiseCount = [merchandiseCountStr integerValue];
        
    float result = unitPrice * merchandiseCount * [rebateStr floatValue];
    return [NSString stringWithFormat:@"%.0f",result];
}

@end


//返利
@implementation CashReturn{
    NSString *moneyConditionStr;/**< 满 x 送 y 中的 x*/
    NSString *moneyReturnStr;/**< 满 x 送 y 中的 y*/
}

-(instancetype)initWithMoneyCondition :(NSString *)moneyCondition moneyReturn:(NSString *)moneyReturn{
    self = [super init];
    if (self) {
        moneyConditionStr = moneyCondition;
        moneyReturnStr    = moneyReturn;
    }
    return self;
}

- (NSString *)resultWithUnitPrice:(NSString *)unitPriceStr
                 merchandiseCount:(NSString *)merchandiseCountStr {
    
    NSInteger unitPrice        = [unitPriceStr integerValue];
    NSInteger merchandiseCount = [merchandiseCountStr integerValue];

    int full   = [moneyConditionStr intValue];
    int rebate = [moneyReturnStr intValue];
    
    if (full > rebate) {
        merchandiseCount = (merchandiseCount / full) * (full - rebate) + merchandiseCount % full;
    } else {
        return  @"返利过多，出错";
    }
    
    NSInteger result = unitPrice * merchandiseCount;
    return [NSString stringWithFormat:@"%ld",(long)result];
}

@end