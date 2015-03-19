//
//  RootViewController.h
//  LionsAndTigers
//
//  Created by Jose Garcia on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUDViewController.h"

@protocol RootViewDelegate <NSObject>

-(void) setAnimalImages:(id)viewController didTappedButton:(UIButton *)sender;


@end

@interface RootViewController : UIViewController
@property (nonatomic, assign) id <RootViewDelegate> delegate;
@property BOOL animal;

@end
