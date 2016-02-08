//
//  CashContext.m
//  Strategy
//
//  Created by HKY on 15/10/27.
//  Copyright © 2015年 test. All rights reserved.
//

#import "CashContext.h"
#import "CashSuper.h"

@implementation CashContext{
    CashSuper *event;
}

- (instancetype)initWithCashSuper:(NSString *)type
                          dataArr:(NSArray *)dataArr{
    self = [super init];
    if (self) {
        
        NSInteger item = [dataArr indexOfObject:type];
        
        switch (item) {
            case 0:
                event = [[CashRebate alloc]initWithRebate:@"0.8"];
                break;
            case 1:
                event = [[CashRebate alloc]initWithRebate:@"0.5"];
                break;
            case 2:
                event = [[CashReturn alloc]initWithMoneyCondition:@"3"
                                                      moneyReturn:@"1"];
                break;
            case 3:
                event = [[CashNormal alloc]init];
                break;
            default:
                break;
        }
    }
    return self;
}

-(NSString *)getResultUnitPrice:(NSString *)unitPriceStr
               merchandiseCount:(NSString *)merchandiseCountStr{
    
   return [event resultWithUnitPrice:unitPriceStr merchandiseCount:merchandiseCountStr];
}

@end
