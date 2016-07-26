//
//  ViewController.m
//  123456789
//
//  Created by hanglifting on 16/7/12.
//  Copyright © 2016年 hanglifting. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:btn];
    
    NSLog(@"hello");
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
