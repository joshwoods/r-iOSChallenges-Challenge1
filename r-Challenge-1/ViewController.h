//
//  ViewController.h
//  r-Challenge-1
//
//  Created by Josh Woods on 8/10/14.
//  Copyright (c) 2014 joshwoods. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UIButton *submitButton;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)userNameEntered:(id)sender;
- (IBAction)passwordEntered:(id)sender;

@end

