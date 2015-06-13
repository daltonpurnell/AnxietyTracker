//
//  Appearance.m
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "Appearance.h"
#import "GeneralInfoViewController.h"

@implementation Appearance

+ (void)initializeAppearanceDefaults {
    
    [[UINavigationBar appearance] setBackgroundColor:[UIColor colorWithRed:21/255.0 green:126/255.0 blue:244/255.0 alpha:1]];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:21/255.0 green:126/255.0 blue:244/255.0 alpha:1]];
    
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:21/255.0 green:126/255.0 blue:244/255.0 alpha:1]];
    
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    
    [[UINavigationBar appearance] setTranslucent:NO];
    
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor whiteColor],
                                                           NSForegroundColorAttributeName,
                                                           nil]];
    
    [[UISegmentedControl appearance] setTintColor:[UIColor colorWithRed:21/255.0 green:126/255.0 blue:244/255.0 alpha:1]];
    

}

@end
