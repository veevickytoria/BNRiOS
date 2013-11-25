//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Victoria Zheng on 11/24/13.
//  Copyright (c) 2013 Victoria Zheng. All rights reserved.
//

#import "WhereamiViewController.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        locationManager = [[CLLocationManager alloc] init];
        locationManager.distanceFilter = 50.0;
        [locationManager setDelegate:self];
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        [locationManager startUpdatingLocation];
        [locationManager startUpdatingHeading];
    }
    return self;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *newLocation = [locations objectAtIndex:locations.count - 1];
    NSLog(@"Location info: %@", newLocation);
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"Heading info: %@", newHeading);
}

- (void)dealloc
{
    [locationManager setDelegate:nil];
}

@end