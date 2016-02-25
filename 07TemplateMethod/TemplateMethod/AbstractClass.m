//
//  AbstractClass.m
//  TemplateMethod
//
//  Created by HKY on 16/2/24.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "AbstractClass.h"

@implementation AbstractClass

- (void)primitiveOperation1 {
    
}

- (void)primitiveOperation2 {
    
}

- (void)templateMethod {
    [self primitiveOperation1];
    [self primitiveOperation2];
    NSLog(@"");
}

@end
