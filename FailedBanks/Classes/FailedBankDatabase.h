//
//  FailedBankDatabase.h
//  FailedBanks
//
//  Created by Yogesh on 8/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "/usr/include/sqlite3.h"


// After the failedBankInfos decl

@interface FailedBankDatabase : NSObject {
	sqlite3 *_database;
}
+(FailedBankDatabase *)database;
-(NSArray *)failedBankInfos;

@end
