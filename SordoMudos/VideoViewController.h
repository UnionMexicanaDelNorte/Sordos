//
//  VideoViewController.h
//  SordoMudos
//
//  Created by Fernando Alonso on 13/03/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface VideoViewController : UIViewController
@property (strong,nonatomic) NSString *nombreDelVideo;
@property (nonatomic) AVPlayer *player;
@property (nonatomic) AVPlayerItem *playerItem;
//@property (nonatomic, weak) IBOutlet PlayerView *playerView;
//-(void) setNombreDelVideo:(NSString *)nombreDelVideo;
@end