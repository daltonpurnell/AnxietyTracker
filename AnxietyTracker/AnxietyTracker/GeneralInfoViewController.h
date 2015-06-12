//
//  GeneralInfoViewController.h
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WikipediaHelper.h"

@interface GeneralInfoViewController : UIViewController <WikipediaHelperDelegate>
//{
//    IBOutlet UIImageView *imageView;
//    IBOutlet UIWebView *webView;
//}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingActivity;

@end
