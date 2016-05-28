//
//  BSSocialButton.h
//  BridgestoneFootball
//
//  Created by Debaprasad Mondal on 12/12/14.
//  Copyright (c) 2014 Indusnet Technologies Pvt Ltd. All rights reserved.
//

#import "BSSocialItemButton.h"

@import UIKit;
@import QuartzCore;
@import AudioToolbox;

@protocol BSSocialButtonDelegate <NSObject>

- (void)itemButtonTappedAtIndex:(NSUInteger)index;

@end
@protocol BSSocialitemButtonDelegate <NSObject>

- (void)MenuButttontap:(int)_btntag;

@end
@interface BSSocialButton : UIView

@property (weak, nonatomic) id<BSSocialButtonDelegate> delegate;
@property (nonatomic,strong)id<BSSocialitemButtonDelegate>_delegateItemBtn;
@property (strong, nonatomic) NSMutableArray *itemButtonImages;
@property (strong, nonatomic) NSMutableArray *itemButtonHighlightedImages;

@property (strong, nonatomic) UIImage *itemButtonBackgroundImage;
@property (strong, nonatomic) UIImage *itemButtonBackgroundHighlightedImage;

@property (assign, nonatomic) CGFloat bloomRadius;
@property (assign, nonatomic) CGPoint dcButtonCenter;

@property (nonatomic,strong) NSString *str_forwhich;
- (id)initWithCenterImage:(UIImage *)centerImage hilightedImage:(UIImage *)centerHighlightedImage;
- (void)addPathItems:(NSArray *)pathItemButtons forwhich:(NSString *)_forwhich;

@end
