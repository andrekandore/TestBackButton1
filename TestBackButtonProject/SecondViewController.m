//
//  SecondViewController.m
//  TestBackButtonProject
//
//  Created by Kelly, James | Jamie | SDTD on 1/31/14.
//  Copyright (c) 2014 Kelly, James | Jamie | SDTD. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    //This doesn't work either.
    //UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    //self.navigationItem.backBarButtonItem = backButton;
}


@end
