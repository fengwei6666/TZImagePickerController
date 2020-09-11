//
//  XZColorUtility.m
//  TZImagePickerController
//
//  Created by wei.feng on 2020/9/11.
//  Copyright © 2020 谭真. All rights reserved.
//

#import "XZColorUtility.h"

@implementation XZColorUtility

+ (UIColor *)tableBgColor
{
    UIColor *color = [UIColor whiteColor];
    
    if (@available(iOS 13.0, *)) {
        
        color = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return [UIColor colorWithWhite:0.1 alpha:1];
            }else{
                return color;
            }
        }];
    }
    
    return color;
}

@end
