//
//  ViewController.h
//  PlaySound
//
//  Created by Daniel Künkel on 26.03.14.
//  Copyright (c) 2014 de.hs-fulda.informatik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>

@property (strong, nonatomic) AVAudioPlayer *audioPlayer;


- (IBAction)onStartAnesthesiaTouchUp:(UIButton *)sender;
- (IBAction)onIntubationTouchUp:(UIButton *)sender;
- (IBAction)onPassingAnesthesiaTouchUp:(UIButton *)sender;
- (IBAction)onErrorTouchUp:(UIButton *)sender;
@end
