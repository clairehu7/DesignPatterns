//
//  PersonView.m
//  Builder
//
//  Created by HKY on 16/2/24.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "PersonView.h"

@implementation PersonView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

#pragma mark - DrawRect

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor lightGrayColor];
    [color set];//设置线条颜色
    
    CGFloat bodyWidth = self.frame.size.width * _bodyWidthSale;
    CGFloat bodyHeight = self.frame.size.height * _bodyHeightSale;
    
    CGFloat lineWidth = 5;
    CGFloat topSpace = 20;
    
    CGFloat armDistance = 50;
    CGFloat legDistance = 20;

    //头
    CGPoint headCenter = CGPointMake(self.frame.size.width / 2, topSpace + _headRadius);
    
    UIBezierPath *headPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(self.frame.size.width / 2 - _headRadius, topSpace, 2 * _headRadius, 2 * _headRadius)];
    headPath.lineWidth = lineWidth;
    [headPath addArcWithCenter:headCenter
                    radius:_headRadius
                startAngle:0
                  endAngle:M_PI*1
                 clockwise:YES];
    
    [headPath fill];
    
    //脖子
    UIBezierPath *neckPath = [UIBezierPath bezierPath];
    neckPath.lineWidth = lineWidth;
    [neckPath moveToPoint:CGPointMake(self.frame.size.width / 2, topSpace + 2 * _headRadius)];
    [neckPath addLineToPoint:CGPointMake(self.frame.size.width / 2, topSpace + 2 *_headRadius + 10)];
    [neckPath stroke];
    
    CGFloat bodyY = topSpace + 2 *_headRadius + 10;
    //身体
    UIBezierPath *bodyPath=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(self.frame.size.width / 2 - bodyWidth / 2, bodyY, bodyWidth, bodyHeight)];
    bodyPath.lineWidth = lineWidth;
    [bodyPath fill];
    
    //四肢
    UIBezierPath *armPath = [UIBezierPath bezierPath];
    armPath.lineWidth = lineWidth;
    [armPath moveToPoint:CGPointMake(self.frame.size.width / 2 - armDistance, self.frame.size.height / 2 - 10)];
    [armPath addLineToPoint:CGPointMake(self.frame.size.width / 2, bodyY + 5)];
    [armPath addLineToPoint:CGPointMake(self.frame.size.width / 2 + armDistance, self.frame.size.height / 2 - 10)];
    [armPath stroke];
    
    UIBezierPath *legPath = [UIBezierPath bezierPath];
    legPath.lineWidth = lineWidth;
    [legPath moveToPoint:CGPointMake(self.frame.size.width / 2 - legDistance, self.frame.size.height)];
    [legPath addLineToPoint:CGPointMake(self.frame.size.width / 2, bodyY + 50)];
    [legPath addLineToPoint:CGPointMake(self.frame.size.width / 2 + legDistance, self.frame.size.height)];
    [legPath stroke];
}

@end
