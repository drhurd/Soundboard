//
//  BoardView.m
//  Soundboard
//
//  Created by Dylan Hurd on 4/24/14.
//  Copyright (c) 2014 StandableInc. All rights reserved.
//

#import "BoardView.h"

#define kTopOffset 78
#define kNumButtons 12

@implementation BoardView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id) initWithImage:(UIImage *)image
{
	self = [super initWithImage:image];
	if (self) {
		// Set the bounds to landscape mode
		// Grab landscape bounds
		CGRect portraitBounds = [[UIScreen mainScreen] bounds];
		CGRect bounds = CGRectMake(0, 0, portraitBounds.size.height, portraitBounds.size.width);
		
		// Set bounds
		[self setFrame:bounds];
		
		// Buttons
		NSInteger topoffset = 78;
		NSInteger buttonWidth = self.frame.size.width/4;
		NSInteger buttonheight = (self.frame.size.height - topoffset)/3;

		self.btn1 = [[BoardButton alloc] initWithFrame:CGRectMake(0, topoffset, buttonWidth, buttonheight)];
		self.btn2 = [[BoardButton alloc] initWithFrame:CGRectMake(buttonWidth, topoffset, buttonWidth, buttonheight)];
		self.btn3 = [[BoardButton alloc] initWithFrame:CGRectMake(buttonWidth*2, topoffset, buttonWidth, buttonheight)];
		self.btn4 = [[BoardButton alloc] initWithFrame:CGRectMake(buttonWidth*3, topoffset, buttonWidth, buttonheight)];
		self.btn5 = [[BoardButton alloc] initWithFrame:CGRectMake(0, topoffset+buttonheight, buttonWidth, buttonheight)];
		self.btn6 = [[BoardButton alloc] initWithFrame:CGRectMake(buttonWidth, topoffset+buttonheight, buttonWidth, buttonheight)];
		self.btn7 = [[BoardButton alloc] initWithFrame:CGRectMake(buttonWidth*2, topoffset+buttonheight, buttonWidth, buttonheight)];
		self.btn8 = [[BoardButton alloc] initWithFrame:CGRectMake(buttonWidth*3, topoffset+buttonheight, buttonWidth, buttonheight)];
		self.btn9 = [[BoardButton alloc] initWithFrame:CGRectMake(0, topoffset+buttonheight*2, buttonWidth, buttonheight)];
		self.btn10 = [[BoardButton alloc] initWithFrame:CGRectMake(buttonWidth, topoffset+buttonheight*2, buttonWidth, buttonheight)];
		self.btn11 = [[BoardButton alloc] initWithFrame:CGRectMake(buttonWidth*2, topoffset+buttonheight*2, buttonWidth, buttonheight)];
		self.btn12 = [[BoardButton alloc] initWithFrame:CGRectMake(buttonWidth*3, topoffset+buttonheight*2, buttonWidth, buttonheight)];
		
		
		[self addSubview:self.btn1];
		[self addSubview:self.btn2];
		[self addSubview:self.btn3];
		[self addSubview:self.btn4];
		[self addSubview:self.btn5];
		[self addSubview:self.btn6];
		[self addSubview:self.btn7];
		[self addSubview:self.btn8];
		[self addSubview:self.btn9];
		[self addSubview:self.btn10];
		[self addSubview:self.btn11];
		[self addSubview:self.btn12];
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
