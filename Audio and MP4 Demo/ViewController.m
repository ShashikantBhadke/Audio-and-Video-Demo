//
//  ViewController.m
//  Audio and MP4 Demo
//
//  Created by Student-002 on 24/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playbuttonclick:(id)sender {
    
    NSURL *audiourl=[[NSBundle mainBundle]URLForResource:@"Mitwaa" withExtension:@"mp3"];
    
    _audioplayer =[[AVAudioPlayer alloc]initWithContentsOfURL:audiourl error:nil];
    _seekslider.minimumValue=0;
    _seekslider.maximumValue=_audioplayer.duration;
    _audioplayer.volume=0.7;
    [_audioplayer play];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateslider) userInfo:nil repeats:YES];
}

-(void)updateslider
{
    _seekslider.value=_audioplayer.currentTime;
    
}

- (IBAction)pausebtnclicked:(id)sender {
    [_audioplayer pause];
}
- (IBAction)changevolume:(id)sender {
    
    _audioplayer.volume=_volumeslider.value;
}

- (IBAction)seektolocation:(id)sender {
    _audioplayer.currentTime=_seekslider.value;
}

- (IBAction)mp4playerbtnclicked:(id)sender {
    
    NSURL *videourl=[[NSBundle mainBundle]URLForResource: @"TalkingTom"withExtension:@"mp4"];
    
    
    _movieplayer=[[MPMoviePlayerViewController alloc]initWithContentURL:videourl];
    [self presentViewController:_movieplayer animated:YES completion:nil];
    
    
}
@end
