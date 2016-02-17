//
//  Finery.h
//  Decorator
//
//  Created by HKY on 16/2/17.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "Person.h"

@interface Finery : Person

@property (nonatomic,strong) Person *component;

@end
