//
//  FraseViewController.h
//  SordoMudos
//
//  Created by Fernando Alonso on 15/03/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
@interface FraseViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate>
{
    int indexDelVideo;
    BOOL isFiltered;
    NSMutableArray *filteredTableData;
}
@property (strong,nonatomic) IBOutlet UISearchBar *searchBar;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSMutableArray *celdas;
@property (strong,nonatomic) NSMutableArray *videos;
@property (strong,nonatomic) NSMutableArray *selected;
@property (strong,nonatomic) NSMutableArray *filteredSelected;
@property (strong,nonatomic) NSMutableArray *filteredVideos;
@property (strong,nonatomic) NSMutableArray *selectedVideos;
@property (strong,nonatomic) NSMutableArray *palabras;
@property (strong,nonatomic) NSString *frase;
@end
