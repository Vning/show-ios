//
//  ShowLiveConcernsController.m
//  ShowLive
//
//  Created by vning on 2018/4/7.
//  Copyright © 2018年 vning. All rights reserved.
//

#import "ShowLiveConcernsController.h"
#import "ShowConcerListCell.h"

@interface ShowLiveConcernsController ()

@end

@implementation ShowLiveConcernsController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationBarView setHidden:YES];
    self.view.backgroundColor = kthemeBlackColor;
    [self Views];
}
-(void)Views{
    [self.view addSubview:self.mainCollectionView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UICollectionView*)mainCollectionView{
    if (!_mainCollectionView) {
        UICollectionViewFlowLayout *flowlayout;
        flowlayout = [[UICollectionViewFlowLayout alloc] init];
        flowlayout.itemSize = CGSizeMake(kMainScreenWidth, kMainScreenWidth);
        flowlayout.minimumInteritemSpacing = 0;
        flowlayout.minimumLineSpacing = 1;
        //                flowlayout.sectionHeadersPinToVisibleBounds = YES;
        _mainCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, kMainScreenWidth,kMainScreenHeight - kNaviBarHeight) collectionViewLayout:flowlayout];
        if (@available(iOS 11.0, *)) {
            _mainCollectionView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }else{
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
        _mainCollectionView.alwaysBounceHorizontal = NO;
        _mainCollectionView.backgroundColor = [UIColor whiteColor];
        _mainCollectionView.delegate = self;
        _mainCollectionView.dataSource = self;
        _mainCollectionView.scrollEnabled = YES;
        _mainCollectionView.showsHorizontalScrollIndicator = NO;
        _mainCollectionView.showsVerticalScrollIndicator = NO;
//        _mainCollectionView.contentInset = UIEdgeInsetsMake(kNaviBarHeight, 0, KBottomHeight, 0);
        [_mainCollectionView registerClass:[ShowConcerListCell class] forCellWithReuseIdentifier:@"ShowConcerListCell"];
    }
    return _mainCollectionView;
}
#pragma mark - ********************** collectionViewdelegate **********************

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ShowConcerListCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ShowConcerListCell" forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(nonnull UICollectionViewCell *)cell forItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
//    if (indexPath.row == _tableListArray.count - 10) {
//        NSString * page = [NSString stringWithFormat:@"%@",_cursor];
//
//        if (![page isEqualToString:@"-1"]) {
//            [self loadMoreData];
//        }
//    }
//    YYAnimatedImageView *coverImageView = ((MessageCollectionViewCell *)cell).coverImageView;
//
//
//    [((MessageCollectionViewCell *)cell) resetLocation];
//
//    [KMHomeCellOpacityAnimation addOpacityAnimationToView:coverImageView duration:0.5 delay:0.2];
    
}

//-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
//    return UIEdgeInsetsMake(1*Proportion375, 1*Proportion375, 1*Proportion375, 1*Proportion375);
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
