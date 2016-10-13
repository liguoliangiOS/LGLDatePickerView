//
//  ViewController.m
//  LGLDatePickerView
//
//  Created by 李国良 on 2016/10/13.
//  Copyright © 2016年 李国良. All rights reserved.
//

#import "ViewController.h"
#import "LGLDatePickerView.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel * date;
@property (nonatomic, strong) UILabel * dateName;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"LGLDatePickerView";
    
    [self addBtnWithY:100 title:@"LGLDatePickerModeTime" selector:@selector(LGLDatePickerModeTime)];
    [self addBtnWithY:150 title:@"LGLDatePickerModeDate" selector:@selector(LGLDatePickerModeDate)];
    [self addBtnWithY:200 title:@"LGLDatePickerModeDateAndTime" selector:@selector(LGLDatePickerModeDateAndTime)];
    [self addBtnWithY:250 title:@"LGLDatePickerModeCountDownTimer" selector:@selector(LGLDatePickerModeCountDownTimer)];
    
    self.dateName = [self addDateLabelWithFrame:CGRectMake(50, 300, 50, 20) title:@"日期"];
    self.date = [self addDateLabelWithFrame:CGRectMake(110, 300, 200, 20) title:@"这里显示"];
    
    /*
     LGLDatePickerModeTime,           // 选择时间
     LGLDatePickerModeDate,           // 日期
     LGLDatePickerModeDateAndTime,    // 日期和时间
     LGLDatePickerModeCountDownTimer, // 可以用于倒计时
     
     */
}

- (UILabel *)addDateLabelWithFrame:(CGRect)frame title:(NSString *)title {
    UILabel * label = [[UILabel alloc] initWithFrame:frame];
    label.textColor = [UIColor blueColor];
    label.text = title;
    label.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:label];
    return label;
}

- (void)addBtnWithY:(CGFloat)y title:(NSString *)title selector:(SEL)action {
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20, y, 300, 40);
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.borderWidth = 1;
    btn.layer.masksToBounds = YES;
    btn.layer.cornerRadius = 8;
    [btn setBackgroundColor:[UIColor orangeColor]];
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];



}

- (void)LGLDatePickerModeTime {
    
    [[LGLDatePickerView shareDatePiker] datePikerShowWithMode:LGLDatePickerModeTime];
    [[LGLDatePickerView shareDatePiker] dateCallBackSelectBlock:^(NSString *date) {
        self.date.text = date;
    }];
}

- (void)LGLDatePickerModeDate {
    
    [[LGLDatePickerView shareDatePiker] datePikerShowWithMode:LGLDatePickerModeDate];
    [[LGLDatePickerView shareDatePiker] dateCallBackSelectBlock:^(NSString *date) {
        self.date.text = date;
    }];
}
- (void)LGLDatePickerModeDateAndTime {
    
    [[LGLDatePickerView shareDatePiker] datePikerShowWithMode:LGLDatePickerModeDateAndTime];
    [[LGLDatePickerView shareDatePiker] dateCallBackSelectBlock:^(NSString *date) {
        self.date.text = date;
    }];
}
- (void)LGLDatePickerModeCountDownTimer {
    
    [[LGLDatePickerView shareDatePiker] datePikerShowWithMode:LGLDatePickerModeCountDownTimer];
    [[LGLDatePickerView shareDatePiker] dateCallBackSelectBlock:^(NSString *date) {
        self.date.text = date;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
