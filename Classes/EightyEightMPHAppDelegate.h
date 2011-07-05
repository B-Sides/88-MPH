//
//  EightyEightMPHAppDelegate.h
//  EightyEightMPH
//
//  Created by Collin Ruffenach on 2/3/11.
//  Copyright 2011 ELC Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EightyEightMPHViewController;

@interface EightyEightMPHAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EightyEightMPHViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EightyEightMPHViewController *viewController;

@end

