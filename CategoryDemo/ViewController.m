//
//  ViewController.m
//  CategoryDemo
//
//  Created by 吕孟霖 on 2016/12/24.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "ViewController.h"

#import "TextModel+tableView.h"
#import "ImageModel+tableView.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray<id<ConfigTableView>> *models;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"Dylan";
    [self initModels];
}

- (void)initModels
{
    TextModel *text1 = [[TextModel alloc] init];
    text1.text = @"How many roads must a man walk down\n\
    Before you call him a man?\n\
    How many seas must a white dove sail\n\
    Before she sleeps in the sand?\n\
    Yes, and how many times must the cannon balls fly\n\
    Before they're forever banned?";
    TextModel *text2 = [[TextModel alloc] init];
    text2.text = @"The answer, my friend, is blowin' in the wind\n\
    The answer is blowin' in the wind.";
    ImageModel *image1 = [[ImageModel alloc] init];
    image1.image = [UIImage imageNamed:@"dylan1.jpg"];
    ImageModel *image2 = [[ImageModel alloc] init];
    image2.image = [UIImage imageNamed:@"dylan2.jpg"];
    self.models = @[text1, image1, text2, image2];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.models.count * 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id<ConfigTableView> model = self.models[indexPath.row % self.models.count];
    return [model heightForCellOfTableView:tableView];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id<ConfigTableView> model = self.models[indexPath.row % self.models.count];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[model cellIdentifier] forIndexPath:indexPath];
    if (cell) {
        [model bindWithTableViewCell:cell];
    }
    return cell;
}

@end
