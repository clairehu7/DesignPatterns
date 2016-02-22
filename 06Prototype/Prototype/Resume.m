
//
//  Resume.m
//  Prototype
//
//  Created by 56QQ on 16/2/22.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Resume.h"

@implementation Resume

- (void)copySelfWithResume:(Resume *)resume {
    resume.name = [self.name mutableCopy];
    resume.age = [self.age copy];
    resume.sex = [self.sex copy];
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    Resume *resume = [[self class] allocWithZone:zone];
    [self copySelfWithResume:resume];
    return resume;
}

#pragma mark - NSMutableCopying

- (id)mutableCopyWithZone:(NSZone *)zone {
    Resume *resume = [[self class] allocWithZone:zone];
    [self copySelfWithResume:resume];
    return resume;
}

@end
