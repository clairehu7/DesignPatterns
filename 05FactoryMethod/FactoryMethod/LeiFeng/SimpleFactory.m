//
//  SimpleFactory.m
//  FactoryMethod
//
//  Created by 56QQ on 16/2/22.
//  Copyright © 2016年 test. All rights reserved.
//

#import "SimpleFactory.h"
#import "Undergraduate.h"
#import "Volunteer.h"

@implementation SimpleFactory

+ (LeiFeng *)creatLeiFengWithType:(LeiFengType)type {
    switch (type) {
        case LeiFengType_Undergraduate: {
            return [[Undergraduate alloc]init];
            break;
        }
        case LeiFengType_Volunteer: {
            return [[Volunteer alloc]init];
            break;
        }
    }
}
@end
