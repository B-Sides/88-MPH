//
//  ClockFormatViewController.m
//  EightyEightMPH
//
//  Created by Collin Ruffenach on 2/8/11.
//  Copyright 2011 ELC Technologies. All rights reserved.
//

#import "ClockFormatViewController.h"


@implementation ClockFormatViewController

@synthesize checkmark;
@synthesize parent;

-(void)setMilitaryTime:(BOOL)_militaryTime {
	
	if(_militaryTime) {
		
		self.checkmark.frame = CGRectMake(self.checkmark.frame.origin.x, 155, self.checkmark.frame.size.width, self.checkmark.frame.size.height);
	}
	
	else {
		
		self.checkmark.frame = CGRectMake(self.checkmark.frame.origin.x, 180, self.checkmark.frame.size.width, self.checkmark.frame.size.height);
	}
}

-(IBAction)noMilitaryClicked:(id)sender {

	self.checkmark.frame = CGRectMake(self.checkmark.frame.origin.x, 180, self.checkmark.frame.size.width, self.checkmark.frame.size.height);
	militaryTime = NO;
}

-(IBAction)militaryClicked:(id)sender {
	
	self.checkmark.frame = CGRectMake(self.checkmark.frame.origin.x, 155, self.checkmark.frame.size.width, self.checkmark.frame.size.height);
	militaryTime = YES;
}

-(IBAction)done:(id)sender {
	
	[parent setMilitaryTime:militaryTime];
	[parent dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
