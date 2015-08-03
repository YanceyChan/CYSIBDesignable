//
//  CYSTextField.h
//  CYSIBDesignable
//
//  Created by YS_Chan on 15/8/3.
//  Copyright (c) 2015年 YS_Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface CYSTextField : UITextField
@property (strong, nonatomic) IBInspectable UIColor *borderColor;
@property (assign, nonatomic) IBInspectable CGFloat borderWidth;
@property (assign, nonatomic) IBInspectable CGFloat cornerRaduis;
@end
