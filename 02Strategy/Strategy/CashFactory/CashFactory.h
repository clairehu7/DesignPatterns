//
//  CashFactory.h
//  Strategy
//
//  Created by HKY on 15/10/27.
//  Copyright © 2015年 test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

@interface CashFactory : NSObject
+ (CashSuper *)creatEventWithDataArr:(NSArray *)dataArr
                  AndEventStr:(NSString *)eventStr;
@end
