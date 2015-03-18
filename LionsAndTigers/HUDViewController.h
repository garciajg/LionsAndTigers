//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Jose Garcia on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol HUDDelegate <NSObject>

@end
@interface HUDViewController : UIViewController

- (IBAction)lionsButtonTapped:(id)sender;

- (IBAction)tigersButtonTapped:(id)sender;

@end
