//
//  BSSocialItemButton.h
//  BridgestoneFootball
//
//  Created by Debaprasad Mondal on 12/12/14.
//  Copyright (c) 2014 Indusnet Technologies Pvt Ltd. All rights reserved.
//

@import UIKit;

@class BSSocialItemButton;

@protocol BSSocialItemButtonDelegate <NSObject>

- (void)itemButtonTapped:(BSSocialItemButton *)itemButton;

@end

@interface BSSocialItemButton : UIImageView

@property (assign, nonatomic) NSUInteger index;
@property (weak, nonatomic) id<BSSocialItemButtonDelegate> delegate;

- (id)initWithImage:(UIImage *)image
   highlightedImage:(UIImage *)highlightedImage
    backgroundImage:(UIImage *)backgroundImage
backgroundHighlightedImage:(UIImage *)backgroundHighlightedImage;

@end
