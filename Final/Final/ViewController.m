//
//  ViewController.m
//  Final
//
//  Created by Paul Shealy on 7/19/13.
//  Copyright (c) 2013 Paul Shealy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    AVAudioPlayer* audioPlayer;
    UIImage *img;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [self.artwork setImage:img];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)playButtonClicked:(id)sender{
    if (audioPlayer.playing) {
        [audioPlayer pause];
        [self.playButton setTitle:@"Play" forState:UIControlStateNormal];
    }
    else {
        [audioPlayer play];
        [self.playButton setTitle:@"Pause" forState:UIControlStateNormal];
        
    }
}

- (void) setSongName: (NSString *)songName withImage:(NSString *)imageName {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:songName ofType:@"mp3"];
    audioPlayer = [[AVAudioPlayer alloc ] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    
    img = [UIImage imageNamed: imageName];
}


@end
