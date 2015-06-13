//
//  GetHelpViewController.h
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Pin.h"

//#define kGOOGLE_API_KEY @"AIzaSyBDqG6KUFNfeCcwIPAh9GYLAzycDIF8TXg"

@interface GetHelpViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property(nonatomic,retain)MKAnnotationView *annotationView;
@property(strong, nonatomic)NSMutableArray *matchingItems;

@end
