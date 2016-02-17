//
//  Decorator.m
//  Decorator
//
//  Created by HKY on 16/2/16.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

- (void)operation {
    if (self.component != nil) {
        [self.component operation];
    }
}

#pragma mark - Setters & Getters

- (void)setComponent:(Component *)component {
    _component = component;
}

@end
