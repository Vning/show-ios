//
//  SLVerticalAlignLabel.h
//  ShowLive
//
//  Created by iori_chou on 2018/5/17.
//  Copyright © 2018年 vning. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum
{
    VerticalAlignmentTop=0,
    VerticalAlignmentMiddle,//default
    VerticalAlignmentBottom,
    
}VerticalAlignment;
@interface SLVerticalAlignLabel : UILabel
{
    @private
    VerticalAlignment _verticalAlignment;
}

@property(nonatomic)VerticalAlignment verticalAlignment;
@end
