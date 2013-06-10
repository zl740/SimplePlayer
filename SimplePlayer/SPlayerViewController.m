//
//  SPlayerViewController.m
//  SimplePlayer
//
//  Created by Uri Nieto on 6/6/13.
//  Copyright (c) 2013 Uri Nieto. All rights reserved.
//

#import "SPlayerViewController.h"
#import <AVFoundation/AVFoundation.h>

// Private class declaration
@interface SPlayerViewController ()

// Private member variables
@property (weak, nonatomic) IBOutlet UILabel *playLabel;
@property (weak, nonatomic) IBOutlet UILabel *playNewLabel;
@property (strong, nonatomic) AVAudioPlayer *player;
@property (strong, nonatomic) AVAudioPlayer *playerNew;

@end

// Actual implementation of the class
@implementation SPlayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Obtain the URL that contains the exact location of the audio file we want to play
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:
                      [[NSBundle mainBundle] pathForResource:@"hard" ofType:@"mp3"]];
    NSURL *fileURLNew = [[NSURL alloc] initFileURLWithPath:
                         [[NSBundle mainBundle] pathForResource:@"water" ofType:@"mp3"]];

    // Initialise the audio player with the audio file
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    
    _playerNew = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURLNew error:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playButtonPressed:(id)sender {
    // Print in the console that the button was pressed
    NSLog(@"Button pressed");
    
    // Update the label
    [self.playLabel setText:@"Button pressed"];     
    
    
    // Play the file
    [_player play];
}
- (IBAction)stopButtonPressed:(id)sender {
    // Print in the console that the button was pressed
    NSLog(@"Stop Button pressed");
    
    // Update the label
    [self.playLabel setText:@"Stop Button pressed"];
    
    
    // Play the file
    [_player stop];
}
- (IBAction)playNewButtonPressed:(id)sender {
    // Print in the console that the button was pressed
    NSLog(@"Play Button pressed");
    
    // Update the label
    [self.playNewLabel setText:@"Play Button pressed"];
    
    
    // Play the file
    [_playerNew play];
}
- (IBAction)stopNewButtonPressed:(id)sender {
    // Print in the console that the button was pressed
    NSLog(@"Stop Button pressed");
    
    // Update the label
    [self.playNewLabel setText:@"Stop Button pressed"];
    
    
    // Play the file
    [_playerNew stop];
}

@end
