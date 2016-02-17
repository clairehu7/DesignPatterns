//
//  Finery.m
//  Decorator
//
//  Created by HKY on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Finery.h"

@implementation Finery

- (void)show {
    if (self.component != nil) {
        [self.component show];
    }
}

#pragma mark - Setters & Getters

- (void)setCompont:(Person *)component {
    _component = component;
}

@end
