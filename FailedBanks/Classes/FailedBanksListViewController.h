//
//  FailedBanksListViewController.h
//  FailedBanks
//
//  Created by Yogesh on 8/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FailedBanksDetailViewController;
@interface FailedBanksListViewController : UITableViewController {
   
	NSArray *_failedBankInfos;
	
}
-(IBAction)add:(id)sender;
@property (nonatomic, retain) NSArray *failedBankInfos;

@end
