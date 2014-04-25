//
//  BoardViewController.h
//  Soundboard
//
//  Created by Dylan Hurd on 4/24/14.
//  Copyright (c) 2014 StandableInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BoardView.h"
#import "FirebaseManager.h"

@interface BoardViewController : UIViewController

- (id) initWithButtonIndex:(NSInteger)buttonIndex;

@property NSInteger buttonIndex;
@property (strong, nonatomic) BoardView* view;
@property (weak, nonatomic) FirebaseManager* fm;

@end
