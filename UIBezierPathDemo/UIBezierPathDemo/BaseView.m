//
//  BaseView.m
//  UIBezierPathDemo
//
//  Created by dulf on 2019/1/18.
//  Copyright © 2019 galanz. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    //多边形
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    [path moveToPoint:CGPointMake(150, 30)];//设置起始点
//    [path addLineToPoint:CGPointMake(250, 70)];//途经点
//    [path addLineToPoint:CGPointMake(210, 170)];//途经点
//    [path addLineToPoint:CGPointMake(90, 170)];//途经点
//    [path addLineToPoint:CGPointMake(50, 70)];//途经点
//
//    [path closePath];//通过调用closePath方法得到最后一条线
    
    //创建矩形(后面的宽高相等就是正方形）
//    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(10, 10, 50, 50)];
    
    //创建带圆角的矩形
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 50, 50) cornerRadius:5];
    
    //创建单个角圆角的矩形
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 50, 50) byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(5, 10)];
    
    //创建圆形或者椭圆
//    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 50, 50)];
    
    //创建圆弧
    UIBezierPath* path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 300)
                                                         radius:80
                                                     startAngle:0
                                                       endAngle:M_PI
                                                      clockwise:NO];
    path.lineWidth = 5;//次数注意线条的初始x值是从5开始的
//    path.lineCapStyle = kCGLineCapRound;
//    path.lineJoinStyle = kCGLineJoinMiter;
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    [path stroke];//设置线条颜色
//    UIColor *fillColor = [UIColor blueColor];
//    [fillColor set];
//    [path fill];//填充
}

@end
