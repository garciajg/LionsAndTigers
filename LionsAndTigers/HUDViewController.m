//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Jose Garcia on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController () 

@end

@implementation HUDViewController

- (IBAction)lionsButtonTapped:(id)sender {
    
//-(void)animalButtonTapped:(id)viewController didTappedButton:(UIButton *)sender;
    [self.delegate animalButtonTapped:self didTappedButton:sender];
}

- (IBAction)tigersButtonTapped:(id)sender {
    [self.delegate animalButtonTapped:self didTappedButton:sender];
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
