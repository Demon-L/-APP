//
//  ViewController.m
//  YX
//
//  Created by L on 2018/4/19.
//  Copyright © 2018年 L. All rights reserved.
//

#ifdef DEBUG

#define ABC @"我是DEBUG"

#elif QA

#define ABC @"我是QA"

#else

#define ABC @"我是release"

#endif

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic ,strong) UIButton *testButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _testButton.backgroundColor = [UIColor redColor];
    _testButton.frame = CGRectMake(100, 100, 50, 50);
    [_testButton addTarget:self action:@selector(testButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_testButton];
    
    //测试
}

- (void)testButtonClick{
    
    NSLog(@"%@",ABC);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
