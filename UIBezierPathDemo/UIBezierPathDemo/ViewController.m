//
//  ViewController.m
//  UIBezierPathDemo
//
//  Created by dulf on 2019/1/18.
//  Copyright © 2019 galanz. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "BaseView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //贝塞尔曲线常规用法
//    BaseView *base = [[BaseView alloc] init];
//    base.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:base];
//    CGFloat statusHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
//    [base mas_makeConstraints:^(MASConstraintMaker *make) {
//        if (@available (iOS 11, *)) {
//            make.top.mas_equalTo(self.view.mas_safeAreaLayoutGuideTop);
//            make.bottom.mas_equalTo(self.view.mas_safeAreaLayoutGuideBottom);
//        }else{
//            make.top.mas_equalTo(statusHeight);
//            make.bottom.mas_equalTo(self.view);
//        }
//        make.left.right.mas_equalTo(self.view);
//
//    }];
    
    //开发常用用法
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    view1.backgroundColor = [UIColor yellowColor];
    //创建UIBezierPath
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view1.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(10, 10)];
    
    //创建CAShapeLayer
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = view1.bounds;
    //设置path
    maskLayer.path = maskPath.CGPath;
    view1.layer.mask = maskLayer;
    
    //添加边框layer
    CAShapeLayer *borderLayer=[CAShapeLayer layer];
    borderLayer.path= maskPath.CGPath;
    borderLayer.fillColor = [UIColor clearColor].CGColor;
    borderLayer.strokeColor= [UIColor redColor].CGColor;
    borderLayer.lineWidth= 5;
    borderLayer.frame=view1.bounds;
    [view1.layer addSublayer:borderLayer];
    
    [self.view addSubview:view1];
    
    //添加约束
//    CGFloat statusHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        if (@available (iOS 11, *)) {
//            make.top.mas_equalTo(self.view.mas_safeAreaLayoutGuideTop);
//        }else{
//            make.top.mas_equalTo(statusHeight);
//        }
//        make.centerX.mas_equalTo(self.view);
//        make.width.height.mas_equalTo(200);
//    }];
    
    
    
    
    
    
}


@end
