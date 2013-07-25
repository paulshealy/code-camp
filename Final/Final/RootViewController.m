//
//  RootViewController.m
//  Final
//
//  Created by Paul Shealy on 7/24/13.
//  Copyright (c) 2013 Paul Shealy. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController* controller = segue.destinationViewController;
    
    if ([@"play1" isEqualToString:segue.identifier])
        [controller setSongName:@"song1" withImage:@"image1.jpg"];
    if ([@"play2" isEqualToString:segue.identifier])
        [controller setSongName:@"song2" withImage:@"image2.jpg"];
    if ([@"play3" isEqualToString:segue.identifier])
        [controller setSongName:@"song3" withImage:@"image3.jpg"];
}

@end
