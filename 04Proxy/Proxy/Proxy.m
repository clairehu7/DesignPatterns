//
//  Proxy.m
//  Proxy
//
//  Created by 56QQ on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Proxy.h"

@implementation Proxy

- (void)doProxy {
    
    [_delegate giveDolls];
    
    if ([_delegate respondsToSelector:@selector(giveFlowers)]) {
        [_delegate giveFlowers];
    }
    if ([_delegate respondsToSelector:@selector(giveChocolate)]) {
        [_delegate giveChocolate];
    }
}

@end
