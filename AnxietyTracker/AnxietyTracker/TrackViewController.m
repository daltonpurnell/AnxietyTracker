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
    
    self.lineChartView.alpha = 0.5;
    
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
