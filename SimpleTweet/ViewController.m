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
@property (strong, nonatomic) NSString *imageString;
@property (strong, nonatomic) NSString *urlString;
- (void)clearLabels;
@end

@implementation ViewController
@synthesize imageString = _imageString;
@synthesize urlString = _urlString;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.imageString = nil;
    self.urlString = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1Tapped:(id)sender {
    
    [self clearLabels];
    
    self.imageString = @"CheatSheetButton.png";
    self.urlString = @"http://www.raywenderlich.com/4872/objective-c-cheat-sheet-and-quick-reference";
    
    self.button1Label.textColor = [UIColor redColor];
}

- (IBAction)button2Tapped :(id)sender {
    
    [self clearLabels];
    
    self.imageString = @"HorizontalTablesButton.png";
    self.urlString = @"http://www.raywenderlich.com/4723/how-to-make-an-interface-with-horizontal-tables-like-the-pulse-news-app-part-2";
    
    self.button2Label.textColor = [UIColor redColor];
}

- (IBAction)button3Tapped:(id)sender {
    
    [self clearLabels];
    
    self.imageString = @"PathfindingButton.png";
    self.urlString = @"http://www.raywenderlich.com/4946/introduction-to-a-pathfinding";
    
    self.button3Label.textColor = [UIColor redColor];
}

- (IBAction)button4Tapped:(id)sender {
    
    [self clearLabels];
    
    self.imageString = @"UIKitButton.png";
    self.urlString = @"http://www.raywenderlich.com/4817/how-to-integrate-cocos2d-and-uikit";
    
    self.button4Label.textColor = [UIColor redColor];
}

- (IBAction)tweetTapped:(id)sender {
    {
        if ([TWTweetComposeViewController canSendTweet])
        {
            TWTweetComposeViewController *tweetSheet =
            [[TWTweetComposeViewController alloc] init];
            [tweetSheet setInitialText:@"Tweeting from iOS 5 By Tutorials! :)"];
            if (self.imageString)
            {
                [tweetSheet addImage:[UIImage imageNamed:self.imageString]];
            }
            
            if (self.urlString)
            {
                [tweetSheet addURL:[NSURL URLWithString:self.urlString]];
            }
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

- (void)clearLabels
{
    self.button1Label.textColor = [UIColor whiteColor];
    self.button2Label.textColor = [UIColor whiteColor];
    self.button3Label.textColor = [UIColor whiteColor];
    self.button4Label.textColor = [UIColor whiteColor];
}
@end
