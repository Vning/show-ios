//
//  SLFriendListCell.h
//  ShowLive
//
//  Created by iori_chou on 2018/4/13.
//  Copyright © 2018年 vning. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "SLFansModel.h"
#import "SLHeadPortrait.h"
#import "UIView+ACMediaExt.h"
#import "UIView+Extend.h"
#import "UILabel+Additional.h"
@protocol SLFriendListCellelegate <NSObject>

- (void)onClickChat:(SLFansModel*)data;
- (void)onClickFollow:(SuccessBlock)block withData:(SLFansModel*)data;
- (void)onClickAt:(SLFansModel*)data button:(UIButton *)sender;

@end

@interface SLFriendListCell : BaseTableViewCell

+(id)cellWithTableView:(UITableView*)tableView;
+(id)cellWithTableView:(UITableView*)tableView separatorLineFull:(BOOL)separatorLineFull;

//粉丝相关
@property(nonatomic,strong)SLFansModel * userListModel;
//用户信息
@property(nonatomic,strong)ShowUserModel * userModel;
//未读消息数量
@property(nonatomic,strong)UILabel          * moneyLabel;
//用户代理
@property (nonatomic,weak)id<SLFriendListCellelegate>  functionDelegate;
@property (nonatomic,assign)BOOL isAt;

@end
