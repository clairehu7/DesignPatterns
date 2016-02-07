//
//  OperationFactory.h
//  FactoryMethod
//
//  Created by HKY on 15/10/26.
//  Copyright © 2015年 test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

@interface OperationFactory : NSObject
+ (Operation *)creatOperationWithSymbol:(NSString *)symbolStr;
@end
