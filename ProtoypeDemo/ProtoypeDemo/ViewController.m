//
//  ViewController.m
//  ProtoypeDemo
//
//  Created by YouXianMing on 15/8/16.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "StudentModel.h"
#import <objc/message.h>



@interface ViewController ()
//@property (nonatomic,assign) NSTimeInterval pq_delayButtonInterVal;
@end

@implementation ViewController
{
    NSTimer *timer;
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    

    // 学生1
    StudentModel *stu1 = [[StudentModel alloc] init];
    stu1.name          = @"小王";
    stu1.age           = @(19);
    stu1.address       = @"中关村";
    stu1.totalScore    = @(100);
    
    // 学生2
    StudentModel *stu2 = [stu1 clone];
    stu2.name          = @"小红";

   
}



- (void) timeEnough
{
    //self.btnClick=(UIButton*)[self.view viewWithTag:33];
    self.btnClick.selected=NO;
    

}




- (IBAction)clickBtn:(id)sender {
 //方法：一   按钮第一次点击会立即响应，第二次点击要间隔n（自己设置）秒后
    
//    if(self.btnClick.selected) return;
//    self.btnClick.selected=YES;
//    
//    [self performSelector:@selector(timeEnough) withObject:nil afterDelay:10.0]; //使用延时进行限制。
//    //to do something.
//
//    NSLog(@"点击啦我");
    
    
   //  放法 二 ：
//先将未到时间执行前的任务取消。  每次不管点击多少次，只会响应一次，并且第一次响应时间和快速间隔时间相等
    
//    [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(todoSomething:) object:sender];
//    [self performSelector:@selector(todoSomething:) withObject:sender afterDelay:1.0f];
    
    
    //方法三 ：
     NSLog(@"点击啦我");
    self.btnClick.enabled = NO;
    [self performSelector:@selector(changeButtonStatus) withObject:nil afterDelay:3.0f];
    
}
//- (void)todoSomething:(id)sender
//{
//    //在这里做按钮的想做的事情。
//        NSLog(@"点击啦我");
//}

- (void)changeButtonStatus
{
    self.btnClick.enabled = YES;
}

@end
