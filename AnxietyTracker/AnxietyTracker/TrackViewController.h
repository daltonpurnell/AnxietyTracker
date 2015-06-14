//
//  TrackViewController.h
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomEntryCell.h"
#import "Appearance.h"
#import "EntryController.h"
#import "EntryDetailViewController.h"
#import "JBLineChartView.h"


@interface TrackViewController : UIViewController <UITableViewDataSource, UITableViewDelegate,JBLineChartViewDelegate, JBLineChartViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet JBLineChartView *lineChartView;

@end
