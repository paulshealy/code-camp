//
//  ViewController.h
//  Final
//
//  Created by Paul Shealy on 7/19/13.
//  Copyright (c) 2013 Paul Shealy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *artwork;
@property (weak, nonatomic) IBOutlet UIButton *playButton;

- (void) setSongName: (NSString *)songName withImage:(NSString *)imageName;

@end
