//
//  photoPageViewController.h
//  Photo Viewer
//
//  Created by Minh Luu on 4/2/14.
//  Copyright (c) 2014 Minh Luu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoPageViewController : UIPageViewController

@property (nonatomic, strong) NSArray *dogPhotos;
@property (nonatomic) int index;

@end
