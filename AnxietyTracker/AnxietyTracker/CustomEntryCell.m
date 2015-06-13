//
//  CustomEntryCell.m
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "CustomEntryCell.h"

@implementation CustomEntryCell

-(void)updateWithEntry:(Entry *)entry {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterShortStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    
    NSDate *date = entry.timestamp;
    NSString *formattedDate = [formatter stringFromDate:date];
    
    self.ratingLabel.text = [NSString stringWithFormat:@"%@", entry.rating];
    self.timestampLabel.text = [NSString stringWithFormat:@"%@", formattedDate];
    self.noteLabell.text = [NSString stringWithFormat:@"%@", entry.note];
}

@end
