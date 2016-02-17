//
//  Decorator.h
//  Decorator
//
//  Created by HKY on 16/2/16.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Component.h"

/**
 *  Decorator 为装饰抽象类，继承自 Component，从外类扩展 Component 类的功能
 */
@interface Decorator : Component

@property (nonatomic, strong)Component *component;

@end
