//
//  MaxAuthCodeView.h
//  AuthCode
//
//  Created by Max on 2017/10/16.
//  Copyright © 2017年 Max. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MaxAuthCodeView : UIView
@property (strong, nonatomic) NSMutableString *authCodeStr;//验证码字符串
- (void)getAuthcode;
@end
