//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Jose Garcia on 3/18/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "TopViewController.h"
#import "HUDViewController.h"
#import "CustomCollectionViewCell.h"
#import "RootViewController.h"

@interface TopViewController () <UICollectionViewDataSource, UICollectionViewDelegate, RootViewDelegate>
@property NSMutableArray *photosArray;
@property HUDViewController *HVC;
@property (strong, nonatomic) IBOutlet UICollectionView *animalsCollectionView;
@property RootViewController *RVC;
@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"class@@@ == %@", [self.parentViewController.parentViewController class]);


    self.RVC = (RootViewController *)self.parentViewController.parentViewController;

    self.RVC.delegate = self;

    
    self.photosArray = [NSMutableArray arrayWithObjects:
                        [UIImage imageNamed:@"lion"],
                        [UIImage imageNamed:@"lion2"],
                        [UIImage imageNamed:@"lion3"], nil];
}


-(IBAction)onTappedButton:(UIBarButtonItem *)sender
{
    sender.enabled = NO;
    [self.delegate topRevealButtonTapped:self didTappedButton:sender];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.animalImageView.image = self.photosArray[indexPath.row];
    return cell;
}


-(void)setAnimalImages:(id)viewController didTappedButton:(UIButton *)sender{
    self.navigationItem.leftBarButtonItem.enabled = YES;
    if ([sender.titleLabel.text isEqualToString:@"Lion"]) {
        self.photosArray = [NSMutableArray arrayWithObjects:
                            [UIImage imageNamed:@"lion"],
                            [UIImage imageNamed:@"lion2"],
                            [UIImage imageNamed:@"lion3"], nil];
    }
    else{
        self.photosArray = [NSMutableArray arrayWithObjects:
                            [UIImage imageNamed:@"tiger"],
                            [UIImage imageNamed:@"tiger2"],
                            [UIImage imageNamed:@"tiger3"], nil];
    }

    [self.animalsCollectionView reloadData]; 
}


@end
