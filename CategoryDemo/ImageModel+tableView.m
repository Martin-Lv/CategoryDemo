//
//  ImageModel+tableView.m
//  CategoryDemo
//
//  Created by 吕孟霖 on 2016/12/24.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "ImageModel+tableView.h"
#import "NSObject+tableView.h"
#import "NSObject+tryDownCast.h"
#import "ImageCell.h"

@implementation ImageModel (tableView)

- (NSString *)cellIdentifier
{
    return @"ImageCell";
}

- (CGFloat)heightForCellOfTableView:(UITableView *)tableView
{
    CGSize imageSize = self.image.size;
    return imageSize.height / imageSize.width * CGRectGetWidth(tableView.frame);
}

- (void)bindWithTableViewCell:(UITableViewCell *)cell
{
    ImageCell *imageCell = [ImageCell tryDownCast:cell];
    if (imageCell) {
        imageCell.fullImageView.image = self.image;
    }
}

@end
