//
//  RootViewController.m
//  LionsAndTigers
//
//  Created by Jose Garcia on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface RootViewController ()<TopViewDelegate,HUDDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightConstraint;
@property (strong, nonatomic) IBOutlet UIView *hudContainerView;
@property (strong, nonatomic) IBOutlet UIView *topContainerView;
@property TopViewController *topVC;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"class == %@", [self.childViewControllers[0] class]);
    NSLog(@"class == %@", [self.childViewControllers[1] class]);

    UINavigationController *temp = [self.childViewControllers objectAtIndex:1];
    self.topVC = [temp.childViewControllers objectAtIndex:0];
    NSLog(@"class == %@", [temp.childViewControllers[0] class]);
    self.topVC.delegate = self;
    // Do any additional setup after loading the view.
}

-(void)topRevealButtonTapped:(id)viewController didTappedButton:(UIBarButtonItem *)sender{

//    When the bar button item is tapped, drag IBOutlets from the left and right constraints on TopViewController. Change the constant property of the constraints so that the top view moves to the right (exposing HUDViewController and its two buttons). Implement this logic in your custom delegate method named topRevealButtonTapped.

    
    NSLog(@"%f,%f constraints",self.leftConstraint.constant, self.rightConstraint.constant);

}


@end
