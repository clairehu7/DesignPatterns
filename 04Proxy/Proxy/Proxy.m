//
//  Proxy.m
//  Proxy
//
//  Created by 56QQ on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Proxy.h"

@implementation Proxy

- (void)doProxyWithGirl:(SchoolGirl *)girl {
    
    [_delegate giveDollsTo:girl.name];
    
    if ([_delegate respondsToSelector:@selector(giveFlowersTo:)]) {
        [_delegate giveFlowersTo:girl.name];
    }
    if ([_delegate respondsToSelector:@selector(giveChocolateTo:)]) {
        [_delegate giveChocolateTo:girl.name];
    }
}

@end
