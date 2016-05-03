//
//  PlayerViewController.m
//  SordoMudos
//
//  Created by Fernando Alonso on 15/03/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import "PlayerViewController.h"

@interface PlayerViewController ()

@end

@implementation PlayerViewController
@synthesize selectedVideos=_selectedVideos;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Frase";
    int i;
    NSMutableArray *videos = [[NSMutableArray alloc] init];
    for (i=0; i<[_selectedVideos count]; i++)
    {
        NSString *moviePath = [[NSBundle mainBundle] pathForResource:[_selectedVideos objectAtIndex:i] ofType:@"mp4"];
        AVPlayerItem *primero = [AVPlayerItem playerItemWithURL:[NSURL fileURLWithPath:moviePath]];
        [videos addObject:primero];

    }
    AVQueuePlayer *queue = [AVQueuePlayer queuePlayerWithItems:videos];
    [self setPlayer:queue];
    [queue play];
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
