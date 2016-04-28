//
//  Observer.h
//  Observer
//
//  Created by hukaiyin on 16/3/12.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Secretary.h"

@interface Observer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Secretary *sub;

- (instancetype)initWithName:(NSString *)name Secretary:(Secretary *)sub;
- (void)update;

@end
