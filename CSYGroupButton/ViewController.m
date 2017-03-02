//
//  ViewController.m
//  CSYGroupButton
//
//  Created by chenshyiuan on 2017/3/2.
//  Copyright © 2017年 chenshyiuan. All rights reserved.
//

#import "ViewController.h"
#import "CSYGroupButtonView.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //子按钮的数组
    NSArray *arrayLeft = @[@"按钮1",@"按钮2",@"按钮3",@"按钮4"];
    
    //相应数组
    CSYGroupButtonView* GroupButton = [[CSYGroupButtonView alloc]initWithFrame:CGRectMake(100, 300, 65, 65) mainButtonTitle:@"主按钮" selectedTitle:@"主按钮被选择" otherButtonsTitle:arrayLeft];
    
    GroupButton.ButtonClickBlock = ^(UIButton *btn)
    {
        NSLog(@"%@",btn.titleLabel.text);
    };
    
    [self.view addSubview:GroupButton];

    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
