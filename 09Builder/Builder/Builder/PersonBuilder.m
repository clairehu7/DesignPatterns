//
//  PersonBuilder.m
//  Builder
//
//  Created by HKY on 16/2/25.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "PersonBuilder.h"

@implementation PersonBuilder

- (CGFloat)buildHeadRadius{
    return 0;
}

- (CGFloat)buildBodyWidthSale {
    return 0;
}

- (CGFloat)buildBodyHeighySale {
    return 0;
}

- (PersonView *)loadPersonView {
    
    CGFloat personWidth = 200;
    CGFloat personHeight = 300;
    PersonView *personView = [[PersonView alloc]initWithFrame:CGRectMake(0,0, personWidth, personHeight)];
    
    personView.headRadius = [self buildHeadRadius];
    personView.bodyWidthSale = [self buildBodyWidthSale];
    personView.bodyHeightSale = [self buildBodyHeighySale];
    
    return personView;
}

@end
