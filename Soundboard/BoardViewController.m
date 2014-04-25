//
//  BoardViewController.m
//  Soundboard
//
//  Created by Dylan Hurd on 4/24/14.
//  Copyright (c) 2014 StandableInc. All rights reserved.
//

#import "BoardViewController.h"
#import "BoardButton.h"

@interface BoardViewController ()

@end

@implementation BoardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id) initWithButtonIndex:(NSInteger)buttonIndex
{
	self = [super init];
	if (self) {
		self.buttonIndex = buttonIndex;
	}
	return self;
}

- (void)loadView
{
	self.view = [[BoardView alloc] initWithImage:[UIImage imageNamed:@"master_base.jpg"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	// Set up firebase
	self.fm = [FirebaseManager singleton];
	
	// Setting up the buttons
	NSInteger idx = self.buttonIndex;
	
	NSString* title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn1 setButtonID:idx];
	[self.view.btn1 setTitle:title forState:UIControlStateNormal];
	[self.view.btn1 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn2 setButtonID:idx];
	[self.view.btn2 setTitle:title forState:UIControlStateNormal];
	[self.view.btn2 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn3 setButtonID:idx];
	[self.view.btn3 setTitle:title forState:UIControlStateNormal];
	[self.view.btn3 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn4 setButtonID:idx];
	[self.view.btn4 setTitle:title forState:UIControlStateNormal];
	[self.view.btn4 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn5 setButtonID:idx];
	[self.view.btn5 setTitle:title forState:UIControlStateNormal];
	[self.view.btn5 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn6 setButtonID:idx];
	[self.view.btn6 setTitle:title forState:UIControlStateNormal];
	[self.view.btn6 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn7 setButtonID:idx];
	[self.view.btn7 setTitle:title forState:UIControlStateNormal];
	[self.view.btn7 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn8 setButtonID:idx];
	[self.view.btn8 setTitle:title forState:UIControlStateNormal];
	[self.view.btn8 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn9 setButtonID:idx];
	[self.view.btn9 setTitle:title forState:UIControlStateNormal];
	[self.view.btn9 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn10 setButtonID:idx];
	[self.view.btn10 setTitle:title forState:UIControlStateNormal];
	[self.view.btn10 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn11 setButtonID:idx];
	[self.view.btn11 setTitle:title forState:UIControlStateNormal];
	[self.view.btn11 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
	
	title = [NSString stringWithFormat:@"Sound %i", idx];
	[self.view.btn12 setButtonID:idx];
	[self.view.btn12 setTitle:title forState:UIControlStateNormal];
	[self.view.btn12 addTarget:self action:@selector(broadCastNumber:) forControlEvents:UIControlEventTouchUpInside];
	idx++;
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)broadCastNumber:(BoardButton*)sender
{
	NSLog(@"COCK");
	[self.fm sendNumber:[NSNumber numberWithInteger:[sender ButtonID]]];
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
