//
//  PersonDirector.m
//  Builder
//
//  Created by HKY on 16/2/25.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "PersonDirector.h"

@implementation PersonDirector

+ (PersonView *)creatPerson:(PersonView *)view {
    PersonView *personView = view;
    [personView buildHead];
    [personView buildBody];
    [personView setNeedsDisplay];
    return personView;
}

@end
