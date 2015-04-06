//
//  ViewController.m
//  week5_SocialMedia
//
//  Created by Phuong Nguyen on 4/5/15.
//  Copyright (c) 2015 msse. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)twitterbutton:(id)sender
{
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetwindow = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetwindow setInitialText:@"Sample message- I am taking MSSE 652 :)"];
        [self presentViewController:tweetwindow animated:YES completion:nil];
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Sorry"
                                  message:@"Your device is not connected to internet or your Twitter account is not set up"
                                  delegate:self
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
    }

    
}

- (IBAction)facebookbutton:(id)sender
{
    
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
        SLComposeViewController *facebookwindow = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [facebookwindow setInitialText:@"Sample message- I am taking MSSE 652 :)"];
        [self presentViewController:facebookwindow animated:YES completion:nil];
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Sorry"
                                  message:@"Your device is not connected to internet or your Facebook account is not set up"
                                  delegate:self
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
    }

    
}
@end
