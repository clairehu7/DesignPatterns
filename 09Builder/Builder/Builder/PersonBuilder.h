//
//  PersonBuilder.h
//  Builder
//
//  Created by HKY on 16/2/25.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonView.h"

@interface PersonBuilder : NSObject

- (CGFloat)buildHeadRadius;
- (CGFloat)buildBodyWidthSale;
- (CGFloat)buildBodyHeighySale;

- (PersonView *)loadPersonView;

@end
