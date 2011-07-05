//
//  ClockFormatViewController.h
//  EightyEightMPH
//
//  Created by Collin Ruffenach on 2/8/11.
//  Copyright 2011 ELC Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ClockFormatViewController : UIViewController {

	IBOutlet UIImageView *checkmark;
	
	id parent;
	BOOL militaryTime;
}

@property (nonatomic, retain) IBOutlet UIImageView *checkmark;
@property (nonatomic, assign) id parent;

-(void)setMilitaryTime:(BOOL)_militaryTime;
-(IBAction)noMilitaryClicked:(id)sender;
-(IBAction)militaryClicked:(id)sender;
-(IBAction)done:(id)sender;

@end
