//
//  MessageViewController.m
//  SordoMudos
//
//  Created by Fernando Alonso on 12/04/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()
@property (nonatomic, strong) MMWormhole *wormhole;

@end

@implementation MessageViewController
@synthesize textField=_textField;
-(void)playWatchKit
{
    [self.wormhole passMessageObject:@{@"selectionString" : _textField.text} identifier:@"selection"];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(playWatchKit)];
    self.navigationItem.rightBarButtonItem = addButton;
    self.wormhole = [[MMWormhole alloc] initWithApplicationGroupIdentifier:@"group.sordomudos"
                                                         optionalDirectory:@"wormhole"];
    
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
