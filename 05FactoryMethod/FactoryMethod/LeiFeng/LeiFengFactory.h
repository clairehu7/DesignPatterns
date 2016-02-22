//
//  LeiFengFactory.h
//  FactoryMethod
//
//  Created by 56QQ on 16/2/22.
//  Copyright © 2016年 test. All rights reserved.
//

#import "LeiFeng.h"

@interface LeiFengFactory : NSObject

- (LeiFeng *)creatLeiFeng;

@end

@interface UndergraduateFactory : LeiFengFactory

@end

@interface VolunteerFactory : LeiFengFactory

@end
