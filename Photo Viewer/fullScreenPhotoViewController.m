//
//  fullScreenPhotoViewController.m
//  Photo Viewer
//
//  Created by Minh Luu on 4/2/14.
//  Copyright (c) 2014 Minh Luu. All rights reserved.
//

#import "fullScreenPhotoViewController.h"

@interface fullScreenPhotoViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *photoScrollView;

@end

@implementation fullScreenPhotoViewController

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
