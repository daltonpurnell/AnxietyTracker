//
//  TrackViewController.m
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "TrackViewController.h"


@interface TrackViewController ()

@end

@implementation TrackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lineChartView.dataSource = self;
    self.lineChartView.delegate = self;
    
    self.lineChartView.alpha = 0.7;
    self.lineChartView.enablePopUpReport = YES;
    self.lineChartView.colorBottom = [UIColor colorWithRed:36/255.0 green:47/255.0 blue:60/255.0 alpha:1];
    self.lineChartView.colorTop = [UIColor colorWithRed:141/255.0 green:148/255.0 blue:211/255.0 alpha:1];
    
    self.lineChartView.alwaysDisplayDots = YES;
    
//    self.lineChartView.clipsToBounds = YES;
//    self.lineChartView.layer.cornerRadius = 20/2.0f;
////    self.lineChartView.layer.borderColor = [UIColor colorWithRed:193/255.0 green:193/255.0 blue:193/255.0 alpha:1].CGColor;
//    self.lineChartView.layer.borderColor = [UIColor colorWithRed:36/255.0 green:47/255.0 blue:60/255.0 alpha:1].CGColor;
//    self.lineChartView.layer.borderWidth = 1.0f;
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [self.tableView reloadData];
}


#pragma mark - graph view data source and delegate methods
- (NSInteger)numberOfPointsInLineGraph:(BEMSimpleLineGraphView *)graph {
    
    return [EntryController sharedInstance].entries.count;
}




- (CGFloat)lineGraph:(BEMSimpleLineGraphView *)graph valueForPointAtIndex:(NSInteger)index {
    
        Entry *entry = [EntryController sharedInstance].entries[index];
    
    
    return [entry.rating floatValue];
}





#pragma mark - table view data source and delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [EntryController sharedInstance].entries.count;
}



- (CustomEntryCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomEntryCell *customCell = [tableView dequeueReusableCellWithIdentifier:@"identifier" forIndexPath:indexPath];
    
    Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
    customCell.entry = entry;
    [customCell updateWithEntry:entry];
    
    return customCell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 150.0;
}


#pragma mark - delete cell

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
        
        [[EntryController sharedInstance]removeEntry:entry];
        
        [tableView reloadData];
        
    }
}

- (IBAction)refreshButtonTapped:(id)sender {
    
    [self.lineChartView reloadGraph];
}

@end
