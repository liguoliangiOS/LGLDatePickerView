# LGLDatePickerView

> 使用说明
```
/*
     LGLDatePickerModeTime,           // 选择时间
     LGLDatePickerModeDate,           // 日期
     LGLDatePickerModeDateAndTime,    // 日期和时间
     LGLDatePickerModeCountDownTimer, // 可以用于倒计时
     
     */
[[LGLDatePickerView shareDatePiker] datePikerShowWithMode:LGLDatePickerModeTime];
    [[LGLDatePickerView shareDatePiker] dateCallBackSelectBlock:^(NSString *date) {
        self.date.text = date;
    }];
}
```

![Alt Text](https://github.com/liguoliangiOS/LGLDatePickerView/blob/master/LGLDatePickerView/lglDatePickView.gif)
