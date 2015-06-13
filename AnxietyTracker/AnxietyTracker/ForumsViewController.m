//
//  ForumsViewController.m
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "ForumsViewController.h"

@interface ForumsViewController ()

@end

@implementation ForumsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [Appearance initializeAppearanceDefaults];
    
    self.optionsList= [[NSArray alloc] initWithObjects: @"Anxiety Zone", @"Psych Forums", @"Social Anxiety Support",
                       @"Social Phobia World", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.optionsList.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.anxietyzone.com/"]];
    }
    if (indexPath.row == 1) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.psychforums.com/generalized-anxiety/"]];
    }
    if (indexPath.row == 2) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.socialanxietysupport.com/forum/"]];
    }
    if (indexPath.row == 3) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.socialphobiaworld.com/social-anxiety-forum/"]];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text=[self.optionsList objectAtIndex:indexPath.row];
    
    return cell;
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
