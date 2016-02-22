//
//  SimpleFactory.h
//  FactoryMethod
//
//  Created by 56QQ on 16/2/22.
//  Copyright © 2016年 test. All rights reserved.
//

#import "LeiFeng.h"

@interface SimpleFactory : NSObject

+ (LeiFeng *)creatLeiFengWithType:(LeiFengType)type;

@end
