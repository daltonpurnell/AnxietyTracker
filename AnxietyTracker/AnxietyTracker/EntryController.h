//
//  EntryController.h
//  DayX
//
//  Created by Caleb Hicks on 4/11/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (strong, nonatomic, readonly) NSArray *entries;

+ (EntryController *)sharedInstance;

- (Entry *)createEntryWithRating:(NSNumber *)rating Note:(NSString *)note Timestamp:(NSDate *)timestamp;

- (void)save;

@end
