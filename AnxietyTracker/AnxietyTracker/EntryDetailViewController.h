//
//  EntryDetailViewController.h
//  AnxietyTracker
//
//  Created by Dalton on 6/13/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EntryController.h"

@interface EntryDetailViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UITextView *noteTextView;
@property (weak, nonatomic) IBOutlet UILabel *pickedLabel;
@property (strong, nonatomic) Entry *entry;


@end
