//
//  BSSocialCenterButton.h
//  BridgestoneFootball
//
//  Created by Debaprasad Mondal on 12/12/14.
//  Copyright (c) 2014 Indusnet Technologies Pvt Ltd. All rights reserved.
//

@import UIKit;

@protocol BSSocialCenterButtonDelegate <NSObject>

- (void)centerButtonTapped;

@end

@interface BSSocialCenterButton : UIImageView

@property (weak, nonatomic) id<BSSocialCenterButtonDelegate> delegate;

@end
