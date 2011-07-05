//
//  LockScreen.h
//  EightyEightMPH
//
//  Created by Collin Ruffenach on 2/6/11.
//  Copyright 2011 ELC Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LockScreen : UIViewController {

	NSDate *date;
	BOOL militaryTime;
}

@property (nonatomic, retain) NSDate *date;
@property (nonatomic, assign) BOOL militaryTime;

@end
