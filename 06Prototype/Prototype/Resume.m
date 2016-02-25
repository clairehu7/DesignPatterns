
//
//  Resume.m
//  Prototype
//
//  Created by HKY on 16/2/22.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Resume.h"

@implementation Resume

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    
    Resume *resumeCopy = [[self class] allocWithZone:zone];
    resumeCopy.name = [self.name copy];
    resumeCopy.age = [self.age copy];
    resumeCopy.sex = [self.sex copy];
    return resumeCopy;
}

#pragma mark - NSMutableCopying

- (id)mutableCopyWithZone:(NSZone *)zone {
    Resume *resumeCopy = [[self class] allocWithZone:zone];
    resumeCopy.name = [self.name mutableCopy];
    resumeCopy.age = [self.age mutableCopy];
    resumeCopy.sex = [self.sex mutableCopy];
    resumeCopy.delegate = self.delegate;
    return resumeCopy;
}


@end
