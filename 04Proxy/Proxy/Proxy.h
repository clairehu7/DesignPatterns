//
//  Proxy.h
//  Proxy
//
//  Created by 56QQ on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SchoolGirl.h"

@protocol IGiveGift <NSObject>

@required
- (void)giveDollsTo:(NSString *)name;

@optional
- (void)giveFlowersTo:(NSString *)name;
- (void)giveChocolateTo:(NSString *)name;

@end

@interface Proxy : NSObject

@property (nonatomic,strong) id<IGiveGift> delegate;

- (void)doProxyWithGirl:(SchoolGirl *)girl ;

@end
