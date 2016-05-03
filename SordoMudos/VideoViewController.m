//
//  VideoViewController.m
//  SordoMudos
//
//  Created by Fernando Alonso on 13/03/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()

@end

@implementation VideoViewController
@synthesize nombreDelVideo=_nombreDelVideo;
-(void) setNombreDelVideo:(NSString *)nombreDelVideo
{
    _nombreDelVideo=    nombreDelVideo;
}
/*
+ (Class)layerClass {
    return [AVPlayerLayer class];
}
- (AVPlayer*)player {
   // return [(AVPlayerLayer *)[self layer] player];
}
- (void)setPlayer:(AVPlayer *)player {
   // [(AVPlayerLayer *)[self layer] setPlayer:player];
}
*/
- (void)viewDidLoad {
    [super viewDidLoad];
  /*  NSURL *url = [[NSBundle mainBundle] URLForResource:@"Aaron" withExtension:@"mp4"];
    
    AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
//    [playerItem addObserver:self forKeyPath:@"status" options:0 context:&ItemStatusContext];
//    [player setIte]
    AVPlayer *player;
    player = [AVPlayer playerWithPlayerItem:item];
    [self setPlayer:player];
    
    [player play];*/
    //MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL: myURL];
/*    [player prepareToPlay];
    [player.view setFrame: myView.bounds];  // player's frame must match parent's
    [myView addSubview: player.view];
    [player play];*/
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
