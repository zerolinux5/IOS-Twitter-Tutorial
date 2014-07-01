//
//  ViewController.m
//  SimpleTweet
//
//  Created by Jesus Magana on 6/30/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "ViewController.h"
#import <Twitter/Twitter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1Tapped:(id)sender {
}

- (IBAction)button2Tapped:(id)sender {
}

- (IBAction)button3Tapped:(id)sender {
}

- (IBAction)button4Tapped:(id)sender {
}

- (IBAction)tweetTapped:(id)sender {
    {
        if ([TWTweetComposeViewController canSendTweet])
        {
            TWTweetComposeViewController *tweetSheet =
            [[TWTweetComposeViewController alloc] init];
            [tweetSheet setInitialText:
             @"Tweeting from iOS 5 By Tutorials! :)"];
            [self presentModalViewController:tweetSheet animated:YES];
        }
        else
        {
            UIAlertView *alertView = [[UIAlertView alloc]
                                      initWithTitle:@"Sorry"
                                      message:@"You can't send a tweet right now, make sure your device has an internet connection and you have at least one Twitter account setup"
                                      delegate:self
                                      cancelButtonTitle:@"OK"                                                   
                                      otherButtonTitles:nil];
            [alertView show];
        }
    }
}
@end
