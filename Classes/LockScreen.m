//
//  LockScreen.m
//  EightyEightMPH
//
//  Created by Collin Ruffenach on 2/6/11.
//  Copyright 2011 ELC Technologies. All rights reserved.
//

#import "LockScreen.h"
#import "FontLabel.h"

@implementation LockScreen

@synthesize date;
@synthesize militaryTime;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self.navigationController setNavigationBarHidden:YES];
	
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	
	if(self.militaryTime) {
		
		[formatter setDateFormat:@"H:mm"];	
	}
	
	else {
		
		[formatter setDateFormat:@"h:mm"];		
	}
	
	NSString *timeString = [formatter stringFromDate:self.date];
	FontLabel *label = nil;
	
	if([timeString length] == 4) {
		
		label = [[FontLabel alloc] initWithFrame:CGRectMake(100, 15, 320, 0) fontName:@"LockClock" pointSize:64.0f];
	}
	
	else {
		
		label = [[FontLabel alloc] initWithFrame:CGRectMake(85, 15, 320, 0) fontName:@"LockClock" pointSize:64.0f];
	}
	
	label.textAlignment = UITextAlignmentCenter;
	label.textColor = [UIColor whiteColor];
	label.text = timeString;
	[label sizeToFit];
	label.backgroundColor = nil;
	label.opaque = NO;
	[self.view addSubview:label];
	[label release];
	
	[formatter setDateFormat:@"EEEE, MMMM d"];
	
	UILabel *dateLabel = [[[UILabel alloc] initWithFrame:CGRectMake(0, 70, 320, 50)] autorelease];
	dateLabel.textAlignment = UITextAlignmentCenter;
	dateLabel.textColor = [UIColor whiteColor];
	dateLabel.font = [UIFont systemFontOfSize:16];
	dateLabel.text = [formatter stringFromDate:[NSDate date]];
	[formatter release];
	dateLabel.backgroundColor = [UIColor clearColor];
	[self.view addSubview:dateLabel];
	
	UISwipeGestureRecognizer *gestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(goBack:)];
	[gestureRecognizer setDirection:UISwipeGestureRecognizerDirectionRight];
	[self.view addGestureRecognizer:gestureRecognizer];
	[gestureRecognizer release];
	
	[[UIApplication sharedApplication] setStatusBarHidden:YES];
}

-(void)goBack:(id)sender {

	[self.navigationController popViewControllerAnimated:YES];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
