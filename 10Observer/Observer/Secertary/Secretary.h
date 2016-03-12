//
//  Secretary.h
//  Observer
//
//  Created by hukaiyin on 16/3/12.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Secretary : NSObject

@property (nonatomic ,strong) NSString *secretaryAction;

- (void)notify;

@end
