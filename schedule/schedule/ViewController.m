//
//  ViewController.m
//  schedule
//
//  Created by 葛 智紀 on 2014/07/24.
//  Copyright (c) 2014年 葛 智紀. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UITableView *tableview;
-(void)showSettingView;

@end

@implementation ViewController

- (id)init
{
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithTitle:@"設定" style:UIBarButtonItemStyleBordered target:self action:@selector(showSettingView)];
    self.navigationItem.leftBarButtonItem = leftButton;
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _tableview = [[UITableView alloc] initWithFrame:[self.view bounds]];
    [self.view addSubview:_tableview];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    //セルが作成されているかチェック
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //セルの選択状態の解除
    [_tableview deselectRowAtIndexPath:indexPath animated:YES];
    DetailViewController *detailView = [[DetailViewController alloc]init];
    [[self navigationController] pushViewController:detailView animated:YES];
}

- (void)showSettingView
{
    SettingViewController *settingViewController = [[SettingViewController alloc]init];
    [self.navigationController pushViewController:settingViewController animated:YES];
}

-(void)didPressCloseSettingViewButton
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
