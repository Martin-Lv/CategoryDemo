//
//  TextModel+tableView.m
//  CategoryDemo
//
//  Created by 吕孟霖 on 2016/12/24.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "TextModel+tableView.h"
#import "NSObject+tryDownCast.h"
#import "TextCell.h"

@implementation TextModel (tableView) 

- (NSString *)cellIdentifier
{
    return @"TextCell";
}

- (CGFloat)heightForCellOfTableView:(UITableView *)tableView
{
    CGRect textRect = [self.text boundingRectWithSize:tableView.bounds.size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil];
    return CGRectGetHeight(textRect) + 30;
}

- (void)bindWithTableViewCell:(UITableViewCell *)cell
{
    TextCell *textCell = [TextCell tryDownCast:cell];
    if (textCell) {
        textCell.textView.text = self.text;
    }
}

@end
