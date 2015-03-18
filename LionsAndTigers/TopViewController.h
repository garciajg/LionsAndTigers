//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Jose Garcia on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopViewDelegate <NSObject>

@optional

-(void)topRevealButtonTapped:(id)viewController didTappedButton:(UIBarButtonItem *)sender;


@end

@interface TopViewController : UIViewController

@property (nonatomic,assign) id<TopViewDelegate> delegate;

@end
