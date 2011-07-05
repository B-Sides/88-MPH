//
//  EightyEightMPHViewController.m
//  EightyEightMPH
//
//  Created by Collin Ruffenach on 2/3/11.
//  Copyright 2011 ELC Technologies. All rights reserved.
//

#import "EightyEightMPHViewController.h"
#import "ClockFormatViewController.h"
#import "LockScreen.h"

@implementation EightyEightMPHViewController

@synthesize datePicker;
@synthesize militaryTime;

- (void)viewDidLoad {
	
    [super viewDidLoad];
	self.militaryTime = NO;
	[self.navigationController setNavigationBarHidden:YES];
	[[UIApplication sharedApplication] setStatusBarHidden:YES];
}

-(IBAction)makeLockScreen:(id)sender {

	LockScreen *lockScreen = [[LockScreen alloc] initWithNibName:@"LockScreen" bundle:[NSBundle mainBundle]];
	[lockScreen setDate:[self.datePicker date]];
	[lockScreen setMilitaryTime:self.militaryTime];
	[self.navigationController pushViewController:lockScreen animated:YES];
	[lockScreen release];
}

-(IBAction)showClockTypeSelector:(id)sender {

	ClockFormatViewController *clockFormat = [[ClockFormatViewController alloc] initWithNibName:@"ClockFormatViewController" bundle:[NSBundle mainBundle]];
	clockFormat.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:clockFormat animated:YES];
	[clockFormat setMilitaryTime:self.militaryTime];
	[clockFormat setParent:self];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
