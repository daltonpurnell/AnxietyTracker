//
//  TrackViewController.m
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "TrackViewController.h"

@interface TrackViewController ()

@property (strong, nonatomic) UIColor *strokeColour;
@property (strong, nonatomic) UIColor *pointColour;
@property (strong, nonatomic) UIColor *graphBackgroundColour;
@property (strong, nonatomic) UIColor *barColour;
@property (strong, nonatomic) UIColor *fontColour;
@property (strong, nonatomic) UIColor *labelColour;

@end

@implementation TrackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [Appearance initializeAppearanceDefaults];
    
    self.pointColour = [UIColor colorWithRed:106.0f/255.0f green:166.0f/255.0f blue:220.0f/255.0f alpha:1];
    self.graphBackgroundColour = [UIColor whiteColor];
    self.barColour = [UIColor colorWithRed:230.0f/255 green:230.0f/255 blue:230.0f/255 alpha:1];
    self.fontColour = [UIColor grayColor];
    self.labelColour = [UIColor colorWithRed:60.0f/255 green:60.0f/255 blue:60.0f/255 alpha:0];

    
    self.graphView.pointFillColor = [UIColor colorWithRed:0.21 green:0.00f blue:0.40 alpha:1.0];
    self.graphView.strokeColor = [UIColor colorWithRed:0.53 green:0.00 blue:0.98 alpha:1.0];
    
    // Set the data for the graph
    // Send only an array of number values
    self.graphView.graphData = [self createArrayToPassToGraph];
    
    // Set the xAxis labels
    // Can send numbers or strings (it's printed using stringWithFormat:"%@")
    self.graphView.graphDataLabels = [self createXAxisLabelArray];
    
    // Customisation options
    self.graphView.pointFillColor = self.pointColour;
    self.graphView.strokeColor = self.strokeColour;
    self.graphView.useCurvedLine = YES;
    self.graphView.hideLabels = YES;
    self.graphView.strokeWidth = 4;
    self.graphView.graphWidth = self.graphView.frame.size.width * 2;
    self.graphView.hidePoints = NO;
    self.graphView.hideLines = NO;
    self.graphView.backgroundViewColor = self.graphBackgroundColour;
    self.graphView.barColor = self.barColour;

    self.graphView.labelFont = [UIFont fontWithName:@"System" size:12];
    self.graphView.labelFontColor = self.fontColour;
    self.graphView.labelBackgroundColor = self.labelColour;
    
    }

- (NSArray *)createArrayToPassToGraph
{
    // For test purposes only, set the values in the text fields
    // and pass them to the graph
    
    NSMutableArray *randomNumbers = [NSMutableArray new];
    
    for (int x = 1; x <= 24; x++) {
        NSInteger low = x * 5;
        NSInteger high = (x * 5) + low;
        
        NSInteger num = low + arc4random_uniform(high);
        
        [randomNumbers addObject:[NSNumber numberWithInteger:num]];
    }
    
    NSMutableArray *mutableArray = [NSMutableArray new];
    
    int value = 23;
    
    for (int x = 0; x < value  ; x++) {
        [mutableArray addObject:[randomNumbers objectAtIndex:x]];
    }
    
    return [NSArray arrayWithArray:mutableArray];
}

- (NSArray *)createXAxisLabelArray
{
    NSMutableArray *mutableArray = [NSMutableArray new];
    
    NSInteger sliderValue = 25;
    
    NSString *alphabet = @"abcdefghijklmnopqrstuvwxyz";
    
    for (int x = 0; x <= sliderValue ; x++) {
        NSRange range = NSMakeRange(x, 1);
        NSString *letter = [[alphabet substringWithRange:range] uppercaseString];
        [mutableArray addObject:letter];
    }
    
    return [NSArray arrayWithArray:mutableArray];
}




#pragma mark - table view data source and delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
}


- (CustomEntryCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomEntryCell *customCell = [tableView dequeueReusableCellWithIdentifier:@"identifier" forIndexPath:indexPath];
    
    return customCell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 100.0;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
