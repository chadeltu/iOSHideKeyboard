//
//  ViewController.m
//  iOSHideKeyboard
//
//  Created by Product Innovation on 15/3/3.
//  Copyright (c) 2015年 chadeltu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIToolbar *tbHide;  // toolbar for keyboard hiding
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initCtrl];
}

- (void)initCtrl
{
    // create keyboard toolbar, has two buttons
    tbHide = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 36)];
    [tbHide setBarStyle:UIBarStyleBlack];
    // "Hide" button
    UIBarButtonItem * hideButton = [[UIBarButtonItem alloc]initWithTitle:@"Hide" style:UIBarButtonItemStyleBordered target:self action:@selector(hideKeyboard)];
    // "Done" button
    UIBarButtonItem * btnSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    UIBarButtonItem * doneButton = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(hideKeyboard)];
    NSArray * buttonsArray = [NSArray arrayWithObjects:hideButton,btnSpace,doneButton,nil];
    [tbHide setItems:buttonsArray];
    
    [self.textField setInputAccessoryView:tbHide];
    [self.textView setInputAccessoryView:tbHide];
}

// hide keyboard
- (void)hideKeyboard
{
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
