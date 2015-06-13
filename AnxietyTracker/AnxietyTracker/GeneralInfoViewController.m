//
//  GeneralInfoViewController.m
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "GeneralInfoViewController.h"

@interface GeneralInfoViewController ()

@end

@implementation GeneralInfoViewController
//@synthesize imageView, webView, loadingActivity;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    WikipediaHelper *wikiHelper = [[WikipediaHelper alloc] init];
    wikiHelper.apiUrl = @"http://en.wikipedia.org";
    wikiHelper.delegate = self;
    
    NSString *searchWord = @"Anxiety+disorder";
//    titleLabel.text = searchWord;
    
    [wikiHelper fetchArticle:searchWord];
    [self.loadingActivity startAnimating];
    self.loadingActivity.hidden = FALSE;
    
    self.imageView.hidden = YES;
    
    [Appearance initializeAppearanceDefaults];

}


- (void)dataLoaded:(NSString *)htmlPage withUrlMainImage:(NSString *)urlMainImage {
    
    if(![urlMainImage isEqualToString:@""]) {
        NSData *imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: urlMainImage]];
        UIImage *image = [UIImage imageWithData:imageData];
        self.imageView.image = image;
    }
    
    [self.loadingActivity stopAnimating];
    self.loadingActivity.hidden = TRUE;
    
    [self.webView loadHTMLString:htmlPage baseURL:nil];
}

/*
#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
