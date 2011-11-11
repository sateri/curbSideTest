//
//  FailedBankInfo.m
//  FailedBanks
//
//  Created by Yogesh on 8/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FailedBankInfo.h"

 
@implementation FailedBankInfo
@synthesize col1 = _col1;
@synthesize col2 = _col2;

-(id)initWithCol1:(NSString *)col1 col2:(NSString *)col2{
 if ((self=[super init])) {
	 self.col1 =col1;
	 self.col2=col2;
	  }
	return self;
}
-(void)dealloc{
	self.col2=nil;
	self.col2=nil;
	[super dealloc];
}
@end
