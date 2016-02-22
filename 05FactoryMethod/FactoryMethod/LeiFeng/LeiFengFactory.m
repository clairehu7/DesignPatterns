//
//  LeiFengFactory.m
//  FactoryMethod
//
//  Created by 56QQ on 16/2/22.
//  Copyright © 2016年 test. All rights reserved.
//

#import "LeiFengFactory.h"
#import "Undergraduate.h"
#import "Volunteer.h"

@implementation LeiFengFactory

- (LeiFeng *)creatLeiFeng {
    return [[LeiFeng alloc]init];
}

@end

@implementation UndergraduateFactory

- (LeiFeng *)creatLeiFeng {
    return [[Undergraduate alloc]init];
}

@end

@implementation VolunteerFactory

- (LeiFeng *)creatLeiFeng {
    return [[Volunteer alloc]init];
}

@end