//
//  SLBaseWebViewRequestHelper.h
//  ShowLive
//
//  Created by iori_chou on 2018/4/20.
//  Copyright © 2018年 vning. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface SLBaseWebViewRequestHelper : NSObject
+ (NSURLRequest *)requestAppendAppInfo:(NSURLRequest *)request;
@end
NS_ASSUME_NONNULL_END

