//
//  ConfigTableView.h
//  CategoryDemo
//
//  Created by 吕孟霖 on 2016/12/24.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ConfigTableView <NSObject>

- (NSString *)cellIdentifier;

- (CGFloat)heightForCellOfTableView:(UITableView *)tableView;

- (void)bindWithTableViewCell:(UITableViewCell *)cell;

@end
