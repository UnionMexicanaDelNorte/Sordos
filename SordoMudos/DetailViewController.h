//
//  DetailViewController.h
//  SordoMudos
//
//  Created by Fernando Alonso on 07/03/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
@interface DetailViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    int indexDelVideo;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSMutableArray *celdas;
@property (strong,nonatomic) NSMutableArray *videos;
@end

