//
//  RLMyGroupDetailsVC.m
//  RowLout
//
//  Created by Priya Sinha on 01/09/15.
//  Copyright (c) 2015 Customer First. All rights reserved.
//

#import "HomeVc.h"



#define MaximgVwhght 220
#define OriginalimgVwHight 143
@interface HomeVc ()

@end

@implementation HomeVc
@synthesize str4FromWhere;
@synthesize str4grpId;
@synthesize str4mygrpId;

#pragma mark----------------
- (void)viewDidLoad {
    [super viewDidLoad];
    //[self ConfigureDCPathButton:Vw4popUpMenue];
    constant4height.constant=OriginalimgVwHight;
    constantTop4imgVW.constant=OriginalimgVwHight;
    [self.view layoutIfNeeded];
    [self.view setNeedsUpdateConstraints];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [tblVw4MygroupDetails reloadData];
   
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self ConfigureDCPathButton:Vw4popUpMenue];
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.bsSocialButton removeFromSuperview];
}

#pragma mark----------------------
#pragma mark TableView Datasource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;//section==4?1:
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==1)
    {
        UIFont *font = [UIFont fontWithName:@"Helvetica Neue" size:14.0];
        NSString *str=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
        NSDictionary *attributes = @{NSFontAttributeName: font,
                                     };
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString: str attributes: attributes];
        CGRect rect = [attributedString boundingRectWithSize:CGSizeMake(tblVw4MygroupDetails.frame.size.width-32, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil];
        CGSize size4answere=rect.size;
        if(size4answere.height>22)
        {
            return 13+size4answere.height;
        }
        return 32;
        
    }
    else
    {
        return 44;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier1=@"firstCell4TblVw4MyDetails";
    NSString *identifier2=@"secondCell4TblVw4MyDetails";
    UITableViewCell *cell;

        cell=indexPath.row==0?[tableView dequeueReusableCellWithIdentifier:identifier1]:[tableView dequeueReusableCellWithIdentifier:identifier2];
        UILabel *label=(UILabel *)[cell.contentView viewWithTag:1];
        if(indexPath.row!=0)
        label.textColor=indexPath.section==0 ?[UIColor colorWithRed:0/255.0 green:171.0/255.0 blue:153.0/255.0 alpha:1.0f]:[UIColor colorWithRed:185.0/255.0 green:185.0/255.0 blue:185.0/255.0 alpha:1.0f];
        label.text= indexPath.row==0?@"Header":@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
       
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    return cell;
}

-(void)moveToSendMessage:(UIButton *)sender
{

    
}


#pragma mark Create Animation Button
- (void)ConfigureDCPathButton:(UIView *)inview{
    
    _bsSocialButton = [[BSSocialButton alloc]initWithCenterImage:[UIImage imageNamed:@"1430954247"]
                                                  hilightedImage:[UIImage imageNamed:@"1430954247"]];
    self.bsSocialButton._delegateItemBtn=self;
    //JoinGroup
    BSSocialItemButton *itemButton_1 = [[BSSocialItemButton alloc]initWithImage:[UIImage imageNamed:@"CreatPost"]
                                                               highlightedImage:[UIImage imageNamed:@"-twitter-round-icon"]
                                                                backgroundImage:[UIImage imageNamed:@"-twitter-round-icon"]
                                                     backgroundHighlightedImage:[UIImage imageNamed:@"-twitter-round-icon"]];
    BSSocialItemButton *itemButton_2 = [[BSSocialItemButton alloc]initWithImage:[UIImage imageNamed:@"ViewMessage"]
                                                               highlightedImage:[UIImage imageNamed:@"download"]
                                                                backgroundImage:[UIImage imageNamed:@"download"]
                                                     backgroundHighlightedImage:[UIImage imageNamed:@"download"]];
    
    BSSocialItemButton *itemButton_3 = [[BSSocialItemButton alloc]initWithImage:[UIImage imageNamed:@"SendMessage"]
                                                               highlightedImage:[UIImage imageNamed:@"fb"]
                                                                backgroundImage:[UIImage imageNamed:@"fb"]
                                                     backgroundHighlightedImage:[UIImage imageNamed:@"fb"]];
    
    BSSocialItemButton *itemButton_4 = [[BSSocialItemButton alloc]initWithImage:[UIImage imageNamed:@"ViewPost"]
                                                               highlightedImage:[UIImage imageNamed:@"linkedin-icon"]
                                                                backgroundImage:[UIImage imageNamed:@"linkedin-icon"]
                                                     backgroundHighlightedImage:[UIImage imageNamed:@"linkedin-icon"]];
   
    BSSocialItemButton *itemButton_5 = [[BSSocialItemButton alloc]initWithImage:[UIImage imageNamed:@"LeaveGroup"]
                                                               highlightedImage:[UIImage imageNamed:@"mobile-social-googleplus"]
                                                                backgroundImage:[UIImage imageNamed:@"mobile-social-googleplus"]
                                                     backgroundHighlightedImage:[UIImage imageNamed:@"mobile-social-googleplus"]];
    //CreatPost
    [self.bsSocialButton addPathItems:@[itemButton_1, itemButton_4, itemButton_3,itemButton_2,itemButton_5] forwhich:@"MygroupDtls"];
    self.bsSocialButton.bloomRadius = 140.0f;
    [self.view layoutIfNeeded];
    self.bsSocialButton.dcButtonCenter = Vw4popUpMenue.center;
    
    [self.view addSubview:self.bsSocialButton];
    [self performSelector:@selector(BounceInButton) withObject:nil afterDelay:0.2];
}
-(void)BounceInButton{
    [UIView animateWithDuration:0.3/1.5 animations:^{
        self.bsSocialButton.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            self.bsSocialButton.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                self.bsSocialButton.transform = CGAffineTransformIdentity;
            }];
        }];
    }];
    
}
#pragma mark----------------
#pragma mark pop button delegate
- (void)MenuButttontap:(int)_btntag
{
  
    
}
#pragma mark LeaveGroup
-(void)leaveGroup{

}
#pragma mark--------------------
#pragma mark - UIScrollViewDelegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat cHeight = constant4height.constant;
    cHeight = cHeight - scrollView.contentOffset.y;
    CGFloat chghtTblTop=constant4TblVwTop.constant-scrollView.contentOffset.y;
    NSLog(@"%f",cHeight);
    if (cHeight>= MaximgVwhght && isAnimation==0) {
        constant4height.constant=MaximgVwhght;
        constant4TblVwTop.constant=MaximgVwhght-20;
        [self.view layoutIfNeeded];
        [self.view setNeedsUpdateConstraints];
    }
    else if (cHeight < OriginalimgVwHight && isAnimation==0){
       // float displacement = OriginalimgVwHight-cHeight;
        
        constant4height.constant=MAX(cHeight, 0);
        constant4TblVwTop.constant=MAX(chghtTblTop, 0);
        [self.view layoutIfNeeded];
        [self.view setNeedsUpdateConstraints];
    }
    else if (isAnimation==0){
        NSLog(@"Hello");
        constant4height.constant=MIN(cHeight, MaximgVwhght);
        constant4TblVwTop.constant=MIN(chghtTblTop, MaximgVwhght-20);
        [self.view layoutIfNeeded];
        [self.view setNeedsUpdateConstraints];
    }
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [self scrollViewDidEndDecelerating:scrollView];
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //return;
    if (constant4height.constant > OriginalimgVwHight) {
        isAnimation=1;
        [UIView animateWithDuration:0.2 animations:^{
            constant4TblVwTop.constant=OriginalimgVwHight-20;
            constant4height.constant=OriginalimgVwHight;
            [self.view layoutIfNeeded];
            [self.view setNeedsUpdateConstraints];
        } completion:^(BOOL finished) {
            [self performSelector:@selector(animationfinish) withObject:nil afterDelay:0.2];
           
        }];
    }
}
-(void)animationfinish{
    isAnimation=0;
}
-(void)backtopreviousscreen{
}
-(void)dealloc{
}

#pragma mark-------------
#pragma mark AlertDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(alertView.tag==11)
    {
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        if(buttonIndex==0)
        [self leaveGroup];
    }
}


@end
