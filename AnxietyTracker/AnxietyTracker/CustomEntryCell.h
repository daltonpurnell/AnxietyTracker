//
//  CustomEntryCell.h
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EntryController.h"
@import UIKit;

@interface CustomEntryCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabell;
@property (weak, nonatomic) IBOutlet UILabel *timestampLabel;

-(void)updateWithEntry:(Entry *)entry;


@end
