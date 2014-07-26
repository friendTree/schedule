//
//  SettingViewController.h
//  schedule
//
//  Created by 葛 智紀 on 2014/07/26.
//  Copyright (c) 2014年 葛 智紀. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SettingViewControllerDelegate <NSObject>

-(void)didPressCloseSettingViewButton;

@end

@interface SettingViewController : UIViewController

@property (weak, nonatomic) id<SettingViewControllerDelegate>delegate;
@property (strong, nonatomic) UIWindow *window;

@end
