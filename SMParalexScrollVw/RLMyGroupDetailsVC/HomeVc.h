//
//  RLMyGroupDetailsVC.h
//  RowLout
//
//  Created by Priya Sinha on 01/09/15.
//  Copyright (c) 2015 Customer First. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BSSocialButton.h"

@interface HomeVc : UIViewController<BSSocialitemButtonDelegate>
{
    __weak IBOutlet UIImageView *imgVw4MyGroupDetails;
    __weak IBOutlet UITableView *tblVw4MygroupDetails;
    __weak IBOutlet UIView *Vw4popUpMenue;
    NSString *str4FromWhere;
    __weak IBOutlet NSLayoutConstraint *constant4height;
    __weak IBOutlet UILabel *lbl4grouppostername;
    BOOL isAnimation;
    __weak IBOutlet NSLayoutConstraint *constantTop4imgVW;
    __weak IBOutlet NSLayoutConstraint *constant4TblVwTop;
    NSString *str4mygrpId;
    NSString *str4grpId;
    NSString *str4dahboardornot;
    
}
@property (nonatomic,strong)NSString *str4FromWhere;
@property (strong, nonatomic)BSSocialButton *bsSocialButton;
@property (strong,nonatomic) NSString *str4mygrpId;
@property (nonatomic,strong) NSString *str4grpId;
@end
