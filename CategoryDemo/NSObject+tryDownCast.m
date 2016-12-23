//
//  NSObject+tryDownCast.m
//  CategoryDemo
//
//  Created by 吕孟霖 on 2016/12/24.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "NSObject+tryDownCast.h"

@implementation NSObject (tryDownCast)

+ (instancetype)tryDownCast:(id)object
{
    if ([object isKindOfClass:self]) {
        return object;
    }else{
        return nil;
    }
}

@end
