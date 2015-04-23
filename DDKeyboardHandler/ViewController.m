//
//  ViewController.m
//  DDKeyboardHandler
//
//  Created by diaoshu on 15/4/23.
//  Copyright (c) 2015年 DDKit. All rights reserved.
//

#import "ViewController.h"
#import "UIView+KeyboardHandler.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIScrollView *carryView;
@property (nonatomic, weak) IBOutlet UIView *toolView;
@property (nonatomic, weak) IBOutlet UITextField *tfDemo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"self.bounds = %@",[NSValue valueWithCGRect:self.view.bounds]);
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
//    self.carryView.contentSize = CGSizeMake(0, self.carryView.frame.size.height);
    NSLog(@"self.bounds = %@",[NSValue valueWithCGRect:self.view.bounds]);
    [self.toolView addKeyboardNotification];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resignTextField:(id)sender{
    [self.tfDemo resignFirstResponder];
}

@end
