//
//  FailedBankInfo.h
//  FailedBanks
//
//  Created by Yogesh on 8/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

//#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>


@interface FailedBankInfo : NSObject {
	NSString * _col1;
    NSString *_col2;
    
}
@property(nonatomic ,copy)NSString * col1;
@property (nonatomic, copy) NSString *col2;

-(id)initWithCol1:(NSString *)col1 col2:(NSString *)col2;
@end
