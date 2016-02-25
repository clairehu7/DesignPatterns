//
//  PersonDirector.m
//  Builder
//
//  Created by HKY on 16/2/25.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "PersonDirector.h"

@implementation PersonDirector

+ (PersonView *)creatPerson:(PersonBuilder *)builder {

    PersonView *personView = [builder loadPersonView];
//    [personView setNeedsDisplay];
    return personView;
}

@end
