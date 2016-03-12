//
//  Observer.m
//  Observer
//
//  Created by hukaiyin on 16/3/12.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Observer.h"

@implementation Observer

- (instancetype)initWithName:(NSString *)name Secretary:(Secretary *)sub {
    self = [super init];
    if (self) {
        self.name = name;
        self.sub = sub;
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(update)
                                                     name:@"boosIsBack" object:nil];
    }
    return self;
}

- (void)update {
    NSLog(@"%@ 继续工作！",self.name);
}

@end
