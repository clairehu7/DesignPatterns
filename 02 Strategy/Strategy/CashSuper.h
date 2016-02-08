//
//  CashSuper.h
//  Strategy
//
//  Created by HKY on 15/10/27.
//  Copyright © 2015年 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CashSuper : NSObject
- (NSString *)resultWithUnitPrice:(NSString *)unitPriceStr
                 merchandiseCount:(NSString *)merchandiseCountStr;
@end

//正常收费
@interface CashNormal: CashSuper
- (NSString *)resultWithUnitPrice:(NSString *)unitPriceStr
                 merchandiseCount:(NSString *)merchandiseCountStr;
@end

//打折
@interface CashRebate : CashSuper
- (instancetype)initWithRebate:(NSString *)rebate;
- (NSString *)resultWithUnitPrice:(NSString *)unitPriceStr
                 merchandiseCount:(NSString *)merchandiseCountStr;
@end

//返利
@interface  CashReturn : CashSuper
-(instancetype)initWithMoneyCondition :(NSString *)moneyCondition moneyReturn:(NSString *)moneyReturn;
- (NSString *)resultWithUnitPrice:(NSString *)unitPriceStr
                 merchandiseCount:(NSString *)merchandiseCountStr;
@end

