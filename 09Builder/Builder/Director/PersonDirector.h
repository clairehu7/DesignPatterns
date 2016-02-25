//
//  PersonDirector.h
//  Builder
//
//  Created by HKY on 16/2/25.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonBuilder.h"

@interface PersonDirector : NSObject

+ (PersonView *)creatPerson:(PersonBuilder *)builder;

@end
