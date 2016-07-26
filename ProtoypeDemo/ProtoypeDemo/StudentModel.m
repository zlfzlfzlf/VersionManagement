//
//  StudentModel.m
//  ProtoypeDemo
//
//  Created by YouXianMing on 15/8/16.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "StudentModel.h"

@implementation StudentModel

- (id)clone {

    StudentModel *student = [[[self class] alloc] init];
    
    // 完成复杂操作的所有作业
    student.name       = self.name;
    student.age        = self.age;
    student.address    = self.address;
    student.totalScore = self.totalScore;
    
    return student;
}

@end
