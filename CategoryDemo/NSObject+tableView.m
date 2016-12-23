//
//  NSObject+bindTableViewCell.m
//  CategoryDemo
//
//  Created by 吕孟霖 on 2016/12/24.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "NSObject+tableView.h"

#define NotImplementedAssert NSAssert(NO, @"not implemented")

@implementation NSObject (tableView)

- (NSString *)cellIdentifier
{
    NotImplementedAssert;
    return nil;
}

- (CGFloat)heightForCellOfTableView:(UITableView *)tableView
{
    NotImplementedAssert;
    return 0;
}

- (void)bindWithTableViewCell:(UITableViewCell *)cell
{
    NotImplementedAssert;
}

@end
