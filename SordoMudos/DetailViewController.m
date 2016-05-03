//
//  DetailViewController.m
//  SordoMudos
//
//  Created by Fernando Alonso on 07/03/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import "DetailViewController.h"
#import "VideoViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize tableView=_tableView,celdas=_celdas,videos=_videos;
#pragma mark - Managing the detail item

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   /* if ([[segue identifier] isEqualToString:@"video"]) {
        VideoViewController *dest = [segue destinationViewController];
        dest.nombreDelVideo =[_videos objectAtIndex:indexDelVideo];
        
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"Aaron" withExtension:@"mp4"];
        
        AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
        //    [playerItem addObserver:self forKeyPath:@"status" options:0 context:&ItemStatusContext];
        //    [player setIte]
        AVPlayer *player;
        player = [AVPlayer playerWithPlayerItem:item];
        

        
        
        [[segue destinationViewController] setPlayer:player];
                [player play];
    }*/
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    indexDelVideo=(int)indexPath.row;
   // [self performSegueWithIdentifier:@"video" sender:self];
    NSString *moviePath = [[NSBundle mainBundle] pathForResource:[_videos objectAtIndex:indexDelVideo] ofType:@"mp4"];
    MPMoviePlayerViewController *playerController = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL fileURLWithPath:moviePath]];
    [self presentMoviePlayerViewControllerAnimated:playerController];
    [playerController.moviePlayer play];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return _celdas.count;
            break;
    }
    return _celdas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"celda"];
    cell.textLabel.text=[_celdas objectAtIndex:indexPath.row];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
}
- (CGFloat)tableView:(UITableView *)tableView
estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}
@end
