//
//  CommonMacro.h
//  TCLVBIMDemo
//
//  Created by annidyfeng on 16/7/29.
//  Copyright © 2016年 tencent. All rights reserved.
//

#ifndef CommonMacro_h
#define CommonMacro_h

#pragma mark - 主窗口的宽、高
#define kMainScreenWidth  MainScreenWidth()
#define kMainScreenHeight MainScreenHeight()

#define Localized(Str) NSLocalizedString(Str, Str)
#import <UIKit/UIKit.h>
static __inline__ CGFloat MainScreenWidth()
{
    return UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) ? [UIScreen mainScreen].bounds.size.width : [UIScreen mainScreen].bounds.size.height;
}

static __inline__ CGFloat MainScreenHeight()
{
    return UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) ? [UIScreen mainScreen].bounds.size.height : [UIScreen mainScreen].bounds.size.width;
}

#define flat_RED [UIColor colorWithHexString:@"E74C3C"]

#endif /* CommonMacro_h */
