//
//  MessageViewController.h
//  SordoMudos
//
//  Created by Fernando Alonso on 12/04/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMWormhole.h"
@interface MessageViewController : UIViewController <UITextFieldDelegate>
@property (strong,nonatomic) IBOutlet UITextField * textField;
@end
