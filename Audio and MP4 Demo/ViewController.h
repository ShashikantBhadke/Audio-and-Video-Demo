//
//  ViewController.h
//  Audio and MP4 Demo
//
//  Created by Student-002 on 24/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController : UIViewController

- (IBAction)playbuttonclick:(id)sender;
- (IBAction)pausebtnclicked:(id)sender;

@property (strong, nonatomic) IBOutlet UISlider *volumeslider;
- (IBAction)changevolume:(id)sender;

@property (strong, nonatomic) IBOutlet UISlider *seekslider;
- (IBAction)seektolocation:(id)sender;



- (IBAction)mp4playerbtnclicked:(id)sender;
@property (nonatomic,retain)AVAudioPlayer *audioplayer;
@property (nonatomic,retain)MPMoviePlayerViewController *movieplayer;

@end

