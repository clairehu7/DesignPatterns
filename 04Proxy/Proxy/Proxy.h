//
//  Proxy.h
//  Proxy
//
//  Created by 56QQ on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IGiveGift <NSObject>

@required
- (void)giveDolls;

@optional
- (void)giveFlowers;
- (void)giveChocolate;

@end

@interface Proxy : NSObject

@property (nonatomic,strong) id<IGiveGift> delegate;

- (void)doProxy;

@end
