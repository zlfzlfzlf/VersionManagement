//
//  StudentModel.h
//  ProtoypeDemo
//
//  Created by YouXianMing on 15/8/16.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtoypeCopyProtocol.h"

@interface StudentModel : NSObject <ProtoypeCopyProtocol>

@property (nonatomic, strong) NSString  *name;
@property (nonatomic, strong) NSNumber  *age;
@property (nonatomic, strong) NSString  *address;
@property (nonatomic, strong) NSNumber  *totalScore;

- (id)clone;

@end
