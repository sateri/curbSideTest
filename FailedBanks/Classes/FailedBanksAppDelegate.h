//
//  FailedBanksAppDelegate.h
//  FailedBanks
//
//  Created by Yogesh on 8/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FailedBanksAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *_navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navController;

@end

