//
//  LeiFeng.h
//  FactoryMethod
//
//  Created by 56QQ on 16/2/18.
//  Copyright © 2016年 test. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger,LeiFengType) {
    LeiFengType_Undergraduate,
    LeiFengType_Volunteer
};

@interface LeiFeng : NSObject

- (void)sweep;
- (void)wash;
- (void)buyRice;

@end
