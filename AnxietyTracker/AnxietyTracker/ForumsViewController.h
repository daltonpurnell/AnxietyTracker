//
//  ForumsViewController.h
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Appearance.h"

@interface ForumsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic)NSArray *optionsList;

@end
