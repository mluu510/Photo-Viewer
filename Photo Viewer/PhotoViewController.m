//
//  PhotoViewController.m
//  Photo Viewer
//
//  Created by Minh Luu on 4/2/14.
//  Copyright (c) 2014 Minh Luu. All rights reserved.
//

#import "PhotoViewController.h"
#import "PhotoCell.h"
#import "PhotoPageViewController.h"

@interface PhotoViewController () <UICollectionViewDataSource>

@property (nonatomic, strong) NSArray *dogPhotos;

@end

@implementation PhotoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *dog1 = [UIImage imageNamed:@"dog1.jpg"];
    UIImage *dog2 = [UIImage imageNamed:@"dog2.jpg"];
    UIImage *dog3 = [UIImage imageNamed:@"dog3.jpg"];
    
    self.dogPhotos = @[dog1, dog2, dog3, dog1, dog2, dog3, dog1, dog2, dog3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"Photo Cell" forIndexPath:indexPath];
    
    UIImage *dogPhoto = [self.dogPhotos objectAtIndex:indexPath.row];
    
    cell.photoImageView.image = dogPhoto;
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dogPhotos.count;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:sender];
//    UIImage *dogPhoto = [self.dogPhotos objectAtIndex:indexPath.row];
    
    PhotoPageViewController *photoVC = segue.destinationViewController;
    photoVC.dogPhotos = self.dogPhotos;
    photoVC.index = (int)indexPath.row;
}


@end
