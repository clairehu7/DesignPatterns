//
//  CashContext.h
//  Strategy
//
//  Created by HKY on 15/10/27.
//  Copyright © 2015年 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CashContext : NSObject
- (instancetype)initWithCashSuper:(NSString *)type
                          dataArr:(NSArray *)dataArr;

-(NSString *)getResultUnitPrice:(NSString *)unitPriceStr
               merchandiseCount:(NSString *)merchandiseCountStr;
@end
