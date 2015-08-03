//
//  CYSTextField.m
//  CYSIBDesignable
//
//  Created by YS_Chan on 15/8/3.
//  Copyright (c) 2015年 YS_Chan. All rights reserved.
//

#import "CYSTextField.h"

@implementation CYSTextField

//当你自己在为实例变量写setter和getter的时候，如果你在其中需要直接访问变量的话，你得声明名字带下划线的变量
@synthesize borderColor = _borderColor;
//使用了awakeFromNib方法之后，IB中的对应的user define runtime attribute失效（如borderColor/borderWidth/cornerRaduis）
- (void)awakeFromNib{
//    self.layer.borderColor = [[UIColor orangeColor] CGColor];
//    self.layer.borderWidth = 1.0f;
//    self.layer.cornerRadius = 5.0f;
    self.placeholder = @"CYSTextField";
    self.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1.0];
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder?:@"" attributes:@{NSForegroundColorAttributeName: [UIColor colorWithWhite:0.1 alpha:1.0]}];
}

//设置setter，将变量赋值给self.layer里面的属性
#pragma mark - getters and setters
- (UIColor *)borderColor{
    
    if (!_borderColor) {
        return [UIColor blueColor];
    }
    return _borderColor;
}

- (void)setBorderColor:(UIColor *)borderColor{
    _borderColor = borderColor;
    self.layer.borderColor = _borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth{
    _borderWidth = borderWidth;
    self.layer.borderWidth = _borderWidth;
}

- (void)setCornerRaduis:(CGFloat)cornerRaduis{
    _cornerRaduis = cornerRaduis;
    self.layer.cornerRadius = _cornerRaduis;
}


@end
