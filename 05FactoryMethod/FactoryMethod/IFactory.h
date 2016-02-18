//
//  IFactory.h
//  FactoryMethod
//
//  Created by HKY on 16/2/18.
//  Copyright © 2016年 test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

@interface IFactory : NSObject
- (Operation *)creatOperation;
@end

@interface AddFactory : IFactory
- (Operation *)creatOperation;
@end

@interface SubFactory : IFactory
- (Operation *)creatOperation;
@end

@interface MulFactory : IFactory
- (Operation *)creatOperation;
@end

@interface DivFactory : IFactory
- (Operation *)creatOperation;
@end