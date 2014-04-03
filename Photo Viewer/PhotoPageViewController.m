//
//  photoPageViewController.m
//  Photo Viewer
//
//  Created by Minh Luu on 4/2/14.
//  Copyright (c) 2014 Minh Luu. All rights reserved.
//

#import "PhotoPageViewController.h"

@interface PhotoPageViewController () <UIPageViewControllerDataSource>

@end

@implementation PhotoPageViewController

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
    self.dataSource = self;

    
    UIViewController *photoVC = [self viewControllerForIndex:self.index];
    NSArray *startingVC = @[photoVC];
    
    [self setViewControllers:startingVC direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    if (self.index + 1 > self.dogPhotos.count-1) {
        return nil;
    }

    return [self viewControllerForIndex:++self.index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{

    if (self.index - 1 < 0) {
        return nil;
    }
    return [self viewControllerForIndex:--self.index];
}

- (UIViewController *)viewControllerForIndex:(int)index
{
    UIImage *dogPhoto = [self.dogPhotos objectAtIndex:index];
    UIImageView *dogImageView = [[UIImageView alloc] initWithImage:dogPhoto];
    UIViewController *photoVC = [[UIViewController alloc] init];
    [photoVC setView:dogImageView];
    return photoVC;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
