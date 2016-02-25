//
//  PersonView.h
//  Builder
//
//  Created by HKY on 16/2/24.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonView : UIView {
    
    CGFloat headRadius;
    CGFloat bodyWidthSale;
    CGFloat bodyHeightSale;
}


- (void)buildHead;
- (void)buildBody;

@end
