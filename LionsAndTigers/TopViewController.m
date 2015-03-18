//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Jose Garcia on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "TopViewController.h"
#import "HUDViewController.h"

@interface TopViewController ()


@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)onTappedButton:(id)sender
{
    [self.delegate topRevealButtonTapped:self didTappedButton:sender];
}


@end
