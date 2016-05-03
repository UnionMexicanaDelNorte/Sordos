//
//  InterfaceController.h
//  SordoMudos WatchKit Extension
//
//  Created by Fernando Alonso on 12/04/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
{
    int i;
}
@property double delay;
@property (strong,nonatomic) IBOutlet WKInterfaceImage *imagen;
@property (strong,nonatomic) NSString *message;
@end
