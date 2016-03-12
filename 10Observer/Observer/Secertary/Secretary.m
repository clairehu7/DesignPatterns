//
//  Secretary.m
//  Observer
//
//  Created by hukaiyin on 16/3/12.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Secretary.h"

@interface Secretary ()


@end

@implementation Secretary

#pragma mark - Public


- (void)notify {
    [[NSNotificationCenter defaultCenter]postNotificationName:@"boosIsBack" object:nil];
}



@end
