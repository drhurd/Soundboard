//
//  MasterViewController.h
//  Soundboard
//
//  Created by Dylan Hurd on 4/20/14.
//  Copyright (c) 2014 StandableInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController* pageViewController;

@property (strong, nonatomic) NSMutableArray* viewControllerArray;

@end
