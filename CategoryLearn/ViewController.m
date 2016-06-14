//
//  ViewController.m
//  CategoryLearn
//
//  Created by charls on 16/3/26.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import "ViewController.h"
#import "HYCCategoryKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *a = [[UIView initWithX:10 Y:150 Width:50 Height:50] backgroundColor:[UIColor greenColor]];
    [a layerCornerRadius:3 MasksToBounds:YES];
    [self.view addSubview:a];
    
    UILabel *b = [[UILabel initWithX:70 Y:150 Width:50 Height:50] backgroundColor:[UIColor orangeColor]];
//    b.backgroundColor = [UIColor grayColor];
    b.text = @"123";
    [self.view addSubview:b];
    
    UIView *c = [UIView initWithX:130 Y:150 Width:50 Height:50 bgColor:[UIColor purpleColor]];
    [c layerShadowWithColor:[UIColor grayColor] Opacity:5.0 Radius:2.0 Offset:CGSizeMake(-2, -2)];
    [self.view addSubview:c];
    
    UIButton *d = [UIButton initWithX:190 Y:150 Width:50 Height:50 bgColor:[UIColor yellowColor]];
    [d layerShadowWithColor:[UIColor redColor] Opacity:5 Radius:2 Offset:CGSizeMake(2, 2)];
    [d setTitle:@"touch" forState:UIControlStateNormal];
    [d layerCornerRadius:5.0f MasksToBounds:NO];
    [d layerBorderColor:[UIColor grayColor] BorderWidth:0.5f];
    
    [d animationTouchDownScaleToDemagn:0.9];
    [d handleActionBlock:^(UIButton *sender) {
        NSLog(@"点击了:%@",sender);
        [d animationScale];
    }];
    
    [d addTarget:self action:@selector(DragOutsideAction:) forControlEvents:UIControlEventTouchUpOutside];
    
    [self.view addSubview:d];
    
    
    
    
    
//    UIView *a = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
//    a.backgroundColor = [UIColor redColor];
//    [self.view addSubview:a];
    
//    NSLog(@"所有字体:%@",[UIFont fontNames]);
    
    
    
    UILabel *fontLabel = [UILabel initWithX:50 Y:220 Width:50 Height:50];
    fontLabel.text = @"sortedArrayUsingSelector:@selector(compare:)];//对获取到的字体数字串按顺序排列,fonts 为一个NSAr...";
    fontLabel.font = [UIFont fontWithName:@"Verdana-Italic" size:20];
    CGFloat height =  [fontLabel heightForStringWithSize:CGSizeMake(100, 300)];
    NSLog(@"%f",height);
    fontLabel.backgroundColor = [UIColor colorWithRed:0.955324 green:0.913972 blue:0.489568 alpha:1.0];
    [self.view addSubview:fontLabel];
    fontLabel.frame = CGRectMake(fontLabel.frame.origin.x, fontLabel.frame.origin.y, 100, height);
    
    
    UILabel *fontLabel_2 = [UILabel initWithX:180 Y:220 Width:50 Height:50];
    fontLabel_2.text = @"sortedArrayUsingSelector:@selector(compare:)];//对获取到的字体数字串按顺序排列,fonts 为一个NSAr...";
    fontLabel_2.font = [UIFont fontWithName:@"Verdana-Italic" size:20];
    CGSize size_fontLabel_2 = [fontLabel_2 boundingRectWithSize:CGSizeMake(100, 3000)];
    fontLabel_2.backgroundColor = [UIColor colorWithRed:0.960852 green:0.667955 blue:0.636824 alpha:1.0];
    [self.view addSubview:fontLabel_2];
    fontLabel_2.frame = CGRectMake(fontLabel_2.frame.origin.x, fontLabel_2.frame.origin.y, size_fontLabel_2.width, size_fontLabel_2.height);
    
//    NSLog(@"label.propertyList:%@",[fontLabel getAllProperties]);
    
    static char overviewKey;
    NSArray *labelObject = @[@"label_1",@"label_2"];
    [fontLabel_2 hyc_setAssociatedObject:labelObject key:&overviewKey policy:OBJC_ASSOCIATION_RETAIN_NONATOMIC];
    NSLog(@"log runtime property %@",[fontLabel_2 hyc_getAssociatedObjectWithKey:&overviewKey]);
    
    NSLog(@"allProperties:%@",[d getAllProperties]);
    
    
    NSDictionary *dict_1 = @{@"姓名":@"伊泽瑞尔",@"职位":@"远程射手",@"射程":@500,@"人物背景":@"伊泽瑞尔的血液中流淌着与生俱来的魔法天赋。与此同时，他热爱流浪探险。伊泽瑞尔进入学校后，有望成长为熟练的科技魔法师，但他很快就厌倦了学校的魔法学习，他八岁已经可以绘制出完整的皮尔特沃夫地下隧道的地图，皮尔特沃夫政府很欣赏伊泽瑞尔的才华，买下了他的地图且聘他担任皮尔特沃夫首席探险家。这份任务决定了他人生的道路——他可以避开城市的喧哗，从事自己喜欢的考古工作。自此以后，伊泽瑞尔就开启了他的探险旅途，不计其数的经历也成为人们广为传诵的传奇。\n 伊泽瑞尔最近的一次探险让他意识到了自己与生俱来的魔法威力。在探索恕瑞玛沙漠的金字塔时，他发现了一件拥有无尽能量的挂饰。这个挂饰硕大无比，适合比伊泽瑞尔体型大一倍的人佩戴，只要周围有魔法能量，佩戴者就可以控制并创造这些魔法能量。伊泽瑞尔轻而易举就能发挥自己的魔法天赋，这是探险家的巨大财富。但缺点是该挂饰会和召唤师的魔法互相干扰。慢慢的，伊泽瑞尔发现自己“作为英雄，为召唤师而作战，致力于解决不相干的联盟争端。”但伊泽瑞尔仍然觉得偶尔被召唤到正义之地是乐意之极的。\n 伊泽瑞尔的信条是：\"我忙于四处流浪，铸就了书里的传奇，哪有时间研读这些发霉的书。\""};
    NSLog(@"%@",[dict_1 descriptionZN]);
    
    NSArray *names = @[@"黄育镇",@"黄佑成",@"黄大强",@"黄唸茹",@"夏达",@"岑丽香"];
    NSLog(@"%@",[names descriptionZN]);
    
    
//    UIView *tapView = [UIView initWithX:20 Y:200 Width:50 Height:50];
//    tapView.backgroundColor = [UIColor greenColor];
//    [self.view addSubview:tapView];
//    [tapView addTapGestureRecognizer:^(UITapGestureRecognizer *tap) {
//        NSLog(@"%@",tap);
//    }];
    
}

- (void)DragOutsideAction:(UIButton *)btn{
    NSLog(@"dragOutside！");
        [btn animationScale];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
