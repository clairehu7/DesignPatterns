//
//  Resume.h
//  Prototype
//
//  Created by HKY on 16/2/22.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ResumeDelegate <NSObject>

- (void)saySth;

@end

@interface Resume : NSObject<NSCopying,NSMutableCopying>

@property (nonatomic, strong) id<ResumeDelegate> delegate;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *sex;
@property (nonatomic, strong) NSString *age;

@end
