//
//  DetailViewController.m
//  r-Challenge-1
//
//  Created by Josh Woods on 8/10/14.
//  Copyright (c) 2014 joshwoods. All rights reserved.
//

#import "DetailViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.helloLabel.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showHello:(id)sender{
    NSLog(@"Pressed");
    self.helloLabel.text = @"Hello World!";
}

@end
