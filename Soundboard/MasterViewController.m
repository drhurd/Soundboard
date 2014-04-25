//
//  MasterViewController.m
//  Soundboard
//
//  Created by Dylan Hurd on 4/20/14.
//  Copyright (c) 2014 StandableInc. All rights reserved.
//

#import "MasterViewController.h"
#import "BoardViewController.h"

#define kNumPages 3

@interface MasterViewController ()

@end

@implementation MasterViewController

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
	
	// Set up the viewcontrollers
	self.viewControllerArray = [[NSMutableArray alloc] init];
	
//	for (int i=0; i < kNumPages; i++) {
//		NSInteger buttonIndex = i*12+1;
//		[self.viewControllerArray addObject:[[BoardViewController alloc] initWithButtonIndex:buttonIndex]];
//	}
//	
//	// Load the PageViewController
//	self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll
//															  navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal
//																			options:nil];
//	[self.pageViewController setDataSource:self];
//	
//	// Connect the pageViewController
//	NSArray *holder = [[NSArray alloc] initWithObjects:[self.viewControllerArray objectAtIndex:0], nil];
//	[self.pageViewController setViewControllers:holder direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
//    
//    // Adding the PageView Controller to the subview
////    [self addChildViewController:self.pageViewController];
//    [[self view] addSubview:[self.pageViewController view]];
//    
//    [self.pageViewController didMoveToParentViewController:self];
	
}

- (void)viewDidAppear:(BOOL)animated
{
	[self presentViewController:[[BoardViewController alloc] initWithButtonIndex:0] animated:NO completion:NULL];	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    // The number of items reflected in the page indicator.
    return self.viewControllerArray.count;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    // The selected item reflected in the page indicator.
    return 0;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [self.viewControllerArray indexOfObject:viewController];
    
    if (index == 0) {
        return nil;
    }
    
    index--;
    
    return [self.viewControllerArray objectAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self.viewControllerArray indexOfObject:viewController];
    
    if (index == self.viewControllerArray.count-1) {
        return nil;
    }
    index++;
    
    return [self.viewControllerArray objectAtIndex:index];
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
