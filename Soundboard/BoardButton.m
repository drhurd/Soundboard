//
//  BoardButton.m
//  Soundboard
//
//  Created by Dylan Hurd on 4/24/14.
//  Copyright (c) 2014 StandableInc. All rights reserved.
//

#import "BoardButton.h"

@implementation BoardButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		[self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//		[self.layer setBorderColor:[UIColor whiteColor].CGColor];
//		[self.layer setBorderWidth:1.0];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
