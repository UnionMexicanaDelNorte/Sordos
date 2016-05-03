//
//  PlayerViewController.h
//  SordoMudos
//
//  Created by Fernando Alonso on 15/03/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>
@interface PlayerViewController : AVPlayerViewController
@property (strong,nonatomic) NSMutableArray *selectedVideos;
@end
