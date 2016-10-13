//
//  LGLDatePickerView.h
//  LGLProgress
//
//  Created by 李国良 on 2016/10/9.
//  Copyright © 2016年 李国良. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, LGLDatePickerrMode) {
    LGLDatePickerModeTime,           // 选择时间
    LGLDatePickerModeDate,           // 日期
    LGLDatePickerModeDateAndTime,    // 日期和时间
    LGLDatePickerModeCountDownTimer, // 可以用于倒计时
};

/** 回调Block*/
typedef void(^DateSelectBlock)(NSString * date);

@interface LGLDatePickerView : NSObject

@property (nonatomic, copy) DateSelectBlock block;
+ (instancetype)shareDatePiker;
- (void)datePikerShowWithMode:(LGLDatePickerrMode)mode;
- (void)dateCallBackSelectBlock:(DateSelectBlock)block;

@end
