//
//  FraseViewController.m
//  SordoMudos
//
//  Created by Fernando Alonso on 15/03/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import "FraseViewController.h"

@interface FraseViewController ()

@end

@implementation FraseViewController
@synthesize tableView=_tableView,celdas=_celdas,videos=_videos,selected=_selected,selectedVideos=_selectedVideos,palabras=_palabras,searchBar=_searchBar,frase=_frase, filteredSelected =_filteredSelected, filteredVideos= _filteredVideos;


-(void)searchBar:(UISearchBar*)searchBar textDidChange:(NSString*)text
{
    if(text.length == 0)
    {
        isFiltered = FALSE;
    }
    else
    {
        isFiltered = true;
        _filteredSelected = [[NSMutableArray alloc] init];
        filteredTableData = [[NSMutableArray alloc] init];
        _filteredVideos = [[NSMutableArray alloc] init];
        int i =0;
        for (i = 0 ; i < _celdas.count ; i++)
        {
            NSString* texto = [_celdas objectAtIndex:i];
            NSRange nameRange = [texto rangeOfString:text options:NSCaseInsensitiveSearch];
            if(nameRange.location != NSNotFound)
            {
                [_filteredSelected addObject:[_selected objectAtIndex:i]];
                [filteredTableData addObject:texto];
                [_filteredVideos addObject:[_videos objectAtIndex:i]];
            }
        }
    }
    
    [self.tableView reloadData];
}
#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"videoConsecutivo"]) {
        [[segue destinationViewController] setSelectedVideos:_selectedVideos];
    }
}
-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}
- (BOOL)shouldAutorotate {
    return NO;
}
-(void)playVideo
{
    [self performSegueWithIdentifier:@"videoConsecutivo" sender:self];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    isFiltered=NO;
    _frase=@"";

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(playVideo)];
    self.navigationItem.rightBarButtonItem = addButton;
    _filteredVideos= [[NSMutableArray alloc] initWithCapacity:_celdas.count];
    _filteredSelected = [[NSMutableArray alloc] initWithCapacity:_celdas.count];
    _palabras = [[NSMutableArray alloc] initWithCapacity:_celdas.count];
    _selected = [[NSMutableArray alloc] initWithCapacity:_celdas.count];
    _selectedVideos = [[NSMutableArray alloc] initWithCapacity:_celdas.count];
    int i;
    for (i=0; i<_celdas.count; i++)
    {
        NSNumber *numero = [[NSNumber alloc] initWithInt:0];
        [_selected addObject:numero];
    }
     //self.navigationItem.leftBarButtonItem = self.editButtonItem;
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(void)actualizaTexto
{
    int i;
    NSMutableString *cad=[[NSMutableString alloc] init];
    for (i=0; i<[_palabras count]; i++)
    {
        [cad appendString:[NSString stringWithFormat:@"%@ ",[_palabras objectAtIndex:i]]];
    }
    _frase = cad;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    //[cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    
    if (cell.accessoryType == UITableViewCellAccessoryCheckmark)
    {
        NSNumber *numero = [[NSNumber alloc] initWithInt:0];
        if(isFiltered)
        {
            [_filteredSelected setObject:numero atIndexedSubscript:indexPath.row-1];
            [_selectedVideos removeObject:[_filteredVideos objectAtIndex:indexPath.row-1]];
            [_palabras removeObject:[filteredTableData objectAtIndex:indexPath.row-1]];
        }
        else
        {
            [_selected setObject:numero atIndexedSubscript:indexPath.row-1];
            [_selectedVideos removeObject:[_videos objectAtIndex:indexPath.row-1]];
            [_palabras removeObject:[_celdas objectAtIndex:indexPath.row-1]];
        }
    }
    else
    {
        NSNumber *numero = [[NSNumber alloc] initWithInt:1];
        if(isFiltered)
        {
            [_filteredSelected setObject:numero atIndexedSubscript:indexPath.row-1];
            [_selectedVideos addObject:[_filteredVideos objectAtIndex:indexPath.row-1]];
            [_palabras addObject:[filteredTableData objectAtIndex:indexPath.row-1]];
        }
        else
        {
            [_selected setObject:numero atIndexedSubscript:indexPath.row-1];
            [_selectedVideos addObject:[_videos objectAtIndex:indexPath.row-1]];
            [_palabras addObject:[_celdas objectAtIndex:indexPath.row-1]];
        }
        
    }
    [self actualizaTexto];
    [tableView reloadData];
    indexDelVideo=(int)indexPath.row+1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    int rowCount;
    if(isFiltered)
    {
        rowCount = (int)filteredTableData.count;
    }
    else
    {
        rowCount = (int)_celdas.count;
    }
    rowCount++;
    return rowCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"celda2"];
    
    if(indexPath.row==0)
    {
        cell.textLabel.text=_frase;
        [cell setAccessoryType:UITableViewCellAccessoryNone];

    }
    else
    {
        
        NSNumber *numero;
        if(isFiltered)
        {
            numero = [_filteredSelected objectAtIndex:indexPath.row-1];
            cell.textLabel.text=[filteredTableData objectAtIndex:indexPath.row-1];
        }
        else
        {
            numero = [_selected objectAtIndex:indexPath.row-1];
            cell.textLabel.text=[_celdas objectAtIndex:indexPath.row-1];
        }
        if([numero intValue]==1)
        {
            [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
        }
        else
        {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
        }
        
    }
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
