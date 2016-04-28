//
//  StockObserver.m
//  Observer
//
//  Created by hukaiyin on 16/3/12.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "StockObserver.h"

@implementation StockObserver

#pragma mark - Public

- (void)update {
    NSLog(@"%@   %@ 关闭股票行情，继续工作！",self.sub.secretaryAction,self.name);
}

@end

@implementation NBAObserver

#pragma mark - Public

- (void)update {
    NSLog(@"%@   %@ 关闭 NBA 直播，继续工作！",self.sub.secretaryAction,self.name);
}

@end
