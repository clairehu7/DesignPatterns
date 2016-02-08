//
//  CashFactory.m
//  Strategy
//
//  Created by HKY on 15/10/27.
//  Copyright © 2015年 test. All rights reserved.
//

#import "CashFactory.h"

@implementation CashFactory

+ (CashSuper *)creatEventWithDataArr:(NSArray *)dataArr
                  AndEventStr:(NSString *)eventStr {
   
    CashSuper *event;
    NSInteger item = [dataArr indexOfObject:eventStr];
    
    switch (item) {
        case 0:
            event = [[CashRebate alloc]initWithRebate:@"0.8"];
            break;
        case 1:
            event = [[CashRebate alloc]initWithRebate:@"0.5"];
            break;
        case 2:
            event = [[CashReturn alloc]initWithMoneyCondition:@"3" moneyReturn:@""];
            break;
        case 3:
            event = [[CashNormal alloc]init];
            break;
        default:
            break;
    }
    return event;
}

@end
