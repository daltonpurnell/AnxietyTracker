//
//  EntryDetailViewController.m
//  AnxietyTracker
//
//  Created by Dalton on 6/13/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "EntryDetailViewController.h"

@interface EntryDetailViewController ()

@property (nonatomic, readonly) NSArray *numbers;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.noteTextView.delegate = self;
    self.picker.delegate = self;
    self.picker.dataSource = self;
    self.pickedLabel.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)doneButtonTapped:(id)sender {
    
    if (self.entry) {
        self.entry.rating = self.pickedLabel.text;
        self.entry.note = self.noteTextView.text;
        self.entry.timestamp = [NSDate date];
        
        [[EntryController sharedInstance] save];
    } else {
        self.entry = [[EntryController sharedInstance] createEntryWithRating:self.pickedLabel.text Note:self.noteTextView.text Timestamp:[NSDate date]];
    }
}


- (IBAction)cancelButtonTapped:(id)sender {
    [self presentAlertViewController];
}

-(void)presentAlertViewController {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Delete Draft" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        
        // write code to delete the draft here
        //        [[ScrapbookController sharedInstance]removeScrapbook:scrapbook];
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Save Draft" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        // write code to save the draft here
        [[EntryController sharedInstance]createEntryWithRating:self.pickedLabel.text Note:self.noteTextView.text Timestamp:[NSDate date]];
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}




#pragma mark - picker view data source and delegate methods
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    NSInteger selectedRowIncomponentZero = [pickerView selectedRowInComponent:0];
    NSString *number = self.numbers[0][selectedRowIncomponentZero];
    
    NSString *pickedNumber = [NSString stringWithFormat:@"%@", number];
    
//    // set picked label to completeDessert
    self.pickedLabel.text = pickedNumber;
//
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return self.numbers[row];
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return self.numbers.count;
}


- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    
    return 50;
    
}




-(NSArray *)numbers {
    
    return @[@"1",
             @"2",
             @"3",
             @"4",
             @"5",
             @"6",
             @"7",
             @"8",
             @"9",
             @"10"];
}

@end
