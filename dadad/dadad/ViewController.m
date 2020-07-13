//
//  ViewController.m
//  dadad
//
//  Created by 张立远 on 2020/7/13.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "ViewController.h"
#import "ViewC02.h"
@interface ViewController ()

@end

@implementation ViewController

//当屏幕被点击时调用此函数
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //创建视图控制器二
    ViewC02* vc = [[ViewC02 alloc] init];
    
    //显示一个新的视图控制器到屏幕上
    //P1:新的视图控制器对象
    //P2:是否使用动画切换效果
    //P3:切换结束后功能调用,不需要就传nil值即可
    //呈现全屏
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}


//程序第一次加载视图时调用,只能加载一次
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //改背景颜色
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"viewDidLoad!第一次加载视图");
}

//当视图控制器的视图即将显示时，调用此函数
//参数表示是否有动画切换后显示
//每一次视图显示时都要被调用
-(void) viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear,视图即将显示");
}

//视图即将消失时调用此函数
//当前状态，试图还是显示在屏幕上
-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"viewWillDisappear,视图即将消失！");
}
//视图已经显示到屏幕后的瞬间调用此函数
-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"视图已经显示！");
}
//当前视图已经从屏幕上消失
-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"视图已经消失！");
}

@end
