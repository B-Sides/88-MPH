//
//  EightyEightMPHViewController.h
//  EightyEightMPH
//
//  Created by Collin Ruffenach on 2/3/11.
//  Copyright 2011 ELC Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EightyEightMPHViewController : UIViewController {

	IBOutlet UIDatePicker *datePicker;
	BOOL militaryTime;
}

@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, assign) BOOL militaryTime;

-(IBAction)showClockTypeSelector:(id)sender;
-(IBAction)makeLockScreen:(id)sender;

@end