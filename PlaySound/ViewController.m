//
//  ViewController.m
//  PlaySound
//
//  Created by Daniel Künkel on 26.03.14.
//  Copyright (c) 2014 de.hs-fulda.informatik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onStartAnesthesiaTouchUp:(UIButton *)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Anästhesiebeginn" ofType:@"mp3"];
    [self playSound:path];
}

- (IBAction)onIntubationTouchUp:(UIButton *)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Intubation" ofType:@"mp3"];
    [self playSound:path];
}

- (IBAction)onPassingAnesthesiaTouchUp:(UIButton *)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"FreigabeAnästhesie" ofType:@"mp3"];
    [self playSound:path];
}

- (IBAction)onErrorTouchUp:(UIButton *)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Fehler" ofType:@"mp3"];
    [self playSound:path];
}

-(void)playSound:(NSString *) soundPath {
    NSError *error;
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:soundPath] error:&error];

    if (error)
    {
        NSLog(@"Error in audioPlayer: %@", [error localizedDescription]);
    } else {
        _audioPlayer.delegate = self;
        [_audioPlayer play];
    }
}

-(void)audioPlayerDidFinishPlaying:
(AVAudioPlayer *)player successfully:(BOOL)flag
{
}

-(void)audioPlayerDecodeErrorDidOccur:
(AVAudioPlayer *)player error:(NSError *)error
{
}

-(void)audioPlayerBeginInterruption:(AVAudioPlayer *)player
{
}

-(void)audioPlayerEndInterruption:(AVAudioPlayer *)player
{
}

@end
