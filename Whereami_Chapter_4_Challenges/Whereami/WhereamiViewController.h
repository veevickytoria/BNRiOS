//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Victoria Zheng on 11/24/13.
//  Copyright (c) 2013 Victoria Zheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController<CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}
@end
