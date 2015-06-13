//
//  TherapyViewController.m
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "TherapyViewController.h"

@interface TherapyViewController ()

@end

@implementation TherapyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [Appearance initializeAppearanceDefaults];
    
    self.optionsList= [[NSArray alloc] initWithObjects: @"Cognitive Behavioral Therapy (CBT)", @"Acceptance and Commitment Therapy (ACT)", @"Exposure Therapy",
                       @"Hypnotherapy", nil];
    self.subtitleList = [[NSArray alloc] initWithObjects:
                         
                         @"Cognitive-Behavioral Therapy has been shown through scientific research to be the most effective form of therapy for Social Anxiety Disorder. Although it is recognized as a specific psychotherapy type, there are many different ways to practice CBT, and your therapist should be experienced in using it specifically with those suffering with social anxiety. CBT consists of two basic elements, the cognitive and the behavioral. Through the therapy process, patients learn to recognize negative thoughts and think about how to prevent them from occurring as an immediate response to a certain situation. They are then guided to learn how to think about a stressful situation in a different, positive and less anxiety-provoking way.",
                         
                         @"Acceptance and Commitment Therapy (ACT) is related to a transcendental philosophy and incorporates many of the same methods as CBT. ACT differs from CBT not in the way it is administered, but in how patients are instructed to think about their anxiety. While CBT focuses on changing emotional responses and feelings, ACT focuses on accepting them and moving forward from that point. There is little scientific research as to the benefits of ACT, however, many patients report that is has helped them discover more about their disorder and how to manage it by discovering more about themselves and their emotional wellness as a whole.",
                         
                         @"Exposure therapy is a technique in behavior therapy intended to treat anxiety disorders and involves the exposure to the feared object or context without any danger in order to overcome their anxiety. Numerous studies have demonstrated its effectiveness in the treatment of anxiety disorders such as PTSD and specific phobias.",
                         
                         @"Hypnotherapy is therapy that is undertaken with a subject in hypnosis. While being hypnotized doesn't have any specific therapeutic benefit, apart from the relaxation, a hypnotized person has certain characteristics, one of which is that suggestions given to hypnotized subjects are far more effective. Hypnotherapy is often used to modify a subject's behavior, emotional content and attitudes, as well as a wide range of conditions, including anxiety.", nil];

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
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://en.wikipedia.org/wiki/Cogniti...vioral_therapy"]];
    }
    if (indexPath.row == 1) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://en.wikipedia.org/wiki/Accepta...itment_Therapy"]];
    }
    if (indexPath.row == 2) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://en.wikipedia.org/wiki/Exposure_therapy"]];
    }
    if (indexPath.row == 3) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://en.wikipedia.org/wiki/Hypnotherapy"]];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [self.optionsList objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.subtitleList objectAtIndex:indexPath.row];
    //This allows for multiple lines
    cell.detailTextLabel.numberOfLines = 0;
    //This makes your label wrap words as they reach the end of a line
//    cell.detailTextLabel.lineBreakMode = UILineB
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:17.0];
    cell.detailTextLabel.font = [UIFont fontWithName:@"Helvetica" size:12.0];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 200;
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
