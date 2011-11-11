//
//  FailedBankDatabase.m
//  FailedBanks
//
//  Created by Yogesh on 8/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FailedBankDatabase.h"
#import "FailedBankInfo.h"


@implementation FailedBankDatabase
static FailedBankDatabase *_database;
 

+(FailedBankDatabase *)database{
	if(_database ==nil){
		_database =[[FailedBankDatabase alloc]init];
	}
	return _database;
}
-(id)init{
    if((self=[super init])){
	//	NSString *sqLiteDb=[[NSBundle mainBundle]pathForResource:@"banklist" ofType:@"sqlite3"];
		NSString *sqLiteDb=[[NSBundle mainBundle]pathForResource:@"dbtest" ofType:@"sqlite"];
		if(sqlite3_open([sqLiteDb UTF8String],&_database) !=SQLITE_OK){
			NSLog(@"Failed to open database");
		}
	
	}
	return self;
  }
-(NSArray *)failedBankInfos{
    NSMutableArray *retval =[[[NSMutableArray alloc]init]autorelease];
	NSString *query =@"select country_cd,company_cd from PF_ORDHDR_TR";
//	NSString *query =@"SELECT country_cd,company_cd,order_no,order_type FROM pf_ordhdr_tr";
	sqlite3_stmt *statement;
	if(sqlite3_prepare_v2(_database, [query UTF8String], -1,&statement,nil)==SQLITE_OK){
		while(sqlite3_step(statement)==SQLITE_ROW){
			
			char *col =(char *)sqlite3_column_text(statement,0);
			if(col==NULL) col="";
		//	static int k=1;
		//	int uniqueId =k;
		//	k++;
			
			char *col1 =(char *)sqlite3_column_text(statement, 1);
			if(col1==NULL) col1="";
			NSString *first=[[NSString alloc]initWithUTF8String:col];
			NSString *second=[[NSString alloc]initWithUTF8String:col1];
			
			FailedBankInfo *info =[[FailedBankInfo alloc]initWithCol1:first col2:second];
			[retval addObject:info];
			
		 }
	    sqlite3_finalize(statement);
	
	  }
	return retval;
}
-(void)dealloc{
	sqlite3_close(_database);
	[super dealloc];
}

@end
