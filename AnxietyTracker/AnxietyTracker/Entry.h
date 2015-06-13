//
//  Entry.h
//  
//
//  Created by Dalton on 6/13/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Entry : NSManagedObject

@property (nonatomic, retain) NSString * rating;
@property (nonatomic, retain) NSString * note;
@property (nonatomic, retain) NSDate * timestamp;

@end
