//
//  Pursuit.m
//  Proxy
//
//  Created by 56QQ on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Pursuit.h"

@implementation Pursuit 

#pragma mark - IGiveGift

- (void)giveDollsTo:(NSString *)name {
    NSLog(@"送娃娃给 %@",name);
}

- (void)giveFlowersTo:(NSString *)name {
    NSLog(@"送花给 %@",name);
}

- (void)giveChocolateTo:(NSString *)name {
    NSLog(@"送巧克力给 %@",name);
}

@end
