//
//  ViewController.h
//  SimpleTweet
//
//  Created by Jesus Magana on 6/30/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *button1Label;
@property (weak, nonatomic) IBOutlet UILabel *button2Label;
@property (weak, nonatomic) IBOutlet UILabel *button3Label;
@property (weak, nonatomic) IBOutlet UILabel *button4Label;

- (IBAction)button1Tapped:(id)sender;
- (IBAction)button2Tapped:(id)sender;
- (IBAction)button3Tapped:(id)sender;
- (IBAction)button4Tapped:(id)sender;
- (IBAction)tweetTapped:(id)sender;

@end
