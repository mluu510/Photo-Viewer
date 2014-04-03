//
//  fullScreenPhotoViewController.h
//  Photo Viewer
//
//  Created by Minh Luu on 4/2/14.
//  Copyright (c) 2014 Minh Luu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fullScreenPhotoViewController : UIViewController

@property (nonatomic, strong) UIImage *dogPhoto;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (nonatomic, strong) NSArray *dogPhotos;
@property (nonatomic) int index;


@end
