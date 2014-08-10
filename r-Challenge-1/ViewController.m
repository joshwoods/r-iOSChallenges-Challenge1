//
//  ViewController.m
//  r-Challenge-1
//
//  Created by Josh Woods on 8/10/14.
//  Copyright (c) 2014 joshwoods. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *usernameTextView;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextView;
@property (weak, nonatomic) IBOutlet UILabel *errorLabel;

@end

@implementation ViewController
{
    NSString *_usernameCheck;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    [self setupTextViews];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    if([self.usernameTextView.text length] >= 8 && [self.passwordTextView.text length] >= 8)
    {
        //removes all lettters from the username and assigns it to _usernameCheck, if the username was entered correctly, the length should = 0 and should continue on with the logic, otherwise user is prompted to enter the username correctly
        NSCharacterSet *characterSet = [NSCharacterSet letterCharacterSet];
        _usernameCheck = [self.usernameTextView.text stringByTrimmingCharactersInSet:characterSet];
        NSLog(@"%@",_usernameCheck);
        if(([_usernameCheck length] == 0)){
            [self performSegueWithIdentifier:@"presentDetailView" sender:self];
        } else {
            self.errorLabel.text = @"Your username is formatted incorrectly.\n\nIt must only contain letters.";
        }
    } else {
        self.errorLabel.text = @"Your username or password were entered incorrectly.\n\nPlease re-enter and try again.";
        self.usernameTextView.text = @"";
        self.passwordTextView.text = @"";
    }
}

- (void)setupTextViews
{
    self.errorLabel.text = @"Username must be only letters.\n\nPassword can be any characters.";
    [self.usernameTextView becomeFirstResponder];
    [self.usernameTextView.layer setBorderColor:[[UIColor blackColor] CGColor]];
    self.usernameTextView.layer.cornerRadius = 6.0f;
    [self.usernameTextView.layer setBorderWidth:1];
    [self.passwordTextView.layer setBorderColor:[[UIColor blackColor] CGColor]];
    self.passwordTextView.layer.cornerRadius = 6.0f;
    [self.passwordTextView.layer setBorderWidth:1];
    self.usernameTextView.text = @"";
    self.passwordTextView.text = @"";
}

- (IBAction)userNameEntered:(id)sender {
    if ([self.usernameTextView.text length] == 0){
        [self.usernameTextView.layer setBorderColor:[[UIColor blackColor] CGColor]];
    } else if ([self.usernameTextView.text length] < 8) {
        [self.usernameTextView.layer setBorderColor:[[UIColor redColor] CGColor]];
    } else if ([self.usernameTextView.text length] >= 8){
        [self.usernameTextView.layer setBorderColor:[[UIColor greenColor] CGColor]];
    }
    NSLog(@"%@", self.usernameTextView.text);
}

- (IBAction)passwordEntered:(id)sender {
    if ([self.passwordTextView.text length] == 0){
        [self.passwordTextView.layer setBorderColor:[[UIColor blackColor] CGColor]];
    } else if ([self.passwordTextView.text length] < 8) {
        [self.passwordTextView.layer setBorderColor:[[UIColor redColor] CGColor]];
    } else if ([self.passwordTextView.text length] >= 8){
        [self.passwordTextView.layer setBorderColor:[[UIColor greenColor] CGColor]];
    }
    NSLog(@"%@", self.passwordTextView.text);
}

@end
