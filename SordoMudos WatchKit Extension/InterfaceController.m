//
//  InterfaceController.m
//  SordoMudos WatchKit Extension
//
//  Created by Fernando Alonso on 12/04/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import "InterfaceController.h"

#import "MMWormhole.h"

@interface InterfaceController()
@property (nonatomic, strong) MMWormhole *wormhole;
@end


@implementation InterfaceController
@synthesize imagen = _imagen,message=_message,delay=_delay;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    self.wormhole = [[MMWormhole alloc] initWithApplicationGroupIdentifier:@"group.sordomudos"
                                                         optionalDirectory:@"wormhole"];
    
    [self.wormhole listenForMessageWithIdentifier:@"selection" listener:^(id messageObject) {
       _message = [messageObject valueForKey:@"selectionString"];
        
        if (_message != nil) {
            _delay=1.0;
            i=0;
            if(_message.length>0)
            {
                [self changeImage];
            }
        }
    }];
    
    // Configure interface objects here.
}
-(void)changeImage
{
    if(i<_message.length)
    {
        NSString *tmp_str = [_message substringWithRange:NSMakeRange(i, 1)];
        NSString *letra = [tmp_str lowercaseString];
        [_imagen setImageNamed:[NSString stringWithFormat:@"%@.png",letra]];
        i++;
        [self performSelector:@selector(changeImage) withObject:nil afterDelay:_delay];
        
    }
}
- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
   
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [_imagen setImageNamed:@"Icon-98@2x.png"];
    [super didDeactivate];
}

@end



