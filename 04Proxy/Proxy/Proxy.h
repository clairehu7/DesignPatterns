//
//  Proxy.h
//  Proxy
//
//  Created by 56QQ on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SchoolGirl.h"

//协议列出 代理人能完成哪些事情
@protocol IGiveGift <NSObject>

@required
- (void)giveDollsTo:(NSString *)name;

@optional
- (void)giveFlowersTo:(NSString *)name;
- (void)giveChocolateTo:(NSString *)name;

@end

//代理人小强认识小红 （#import "SchoolGirl.h"）
@interface Proxy : NSObject

@property (nonatomic,strong) id<IGiveGift> delegate;

- (void)doProxyWithGirl:(SchoolGirl *)girl ;

@end
