//
//  ViewController.m
//  TestBackButtonProject
//
//  Created by Kelly, James | Jamie | SDTD on 1/31/14.
//  Copyright (c) 2014 Kelly, James | Jamie | SDTD. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
@property (nonatomic, strong) NSString *originalTitle;
@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.navigationItem.title = @"Hello";
    
    //This doens't work either.
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(buttonTapped)];
}

// Appear

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if (self.originalTitle) {
        self.navigationItem.title = self.originalTitle;
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

// Disappear

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.originalTitle = self.navigationItem.title;
    self.navigationItem.title = @"";
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
  
}



- (void)buttonTapped {
    SecondViewController *viewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}



@end
