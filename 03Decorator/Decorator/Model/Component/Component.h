//
//  Component.h
//  Decorator
//
//  Created by HKY on 16/2/16.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  Component 类定义一个对象接口，可以给这些对象动态地添加职责
 */
@interface Component : NSObject

- (void)operation;

@end
