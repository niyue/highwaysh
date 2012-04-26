//
//  TollStationMapViewController.m
//  highwaysh
//

#import "TollStationMapViewController.h"

@interface TollStationMapViewController ()

@end

@implementation TollStationMapViewController
@synthesize mapView;
@synthesize address;

- (void)viewDidLoad
{
    [super viewDidLoad];
    CLGeocoder *geoCoder = [[CLGeocoder alloc] init];
    [geoCoder geocodeAddressString:address completionHandler:^(NSArray *placemarks, NSError *error) {
        if ([placemarks count] > 0) {
            CLPlacemark *placemark = [placemarks objectAtIndex:0];
            CLLocation *location = [placemark location];
            MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
            annotation.coordinate = location.coordinate;
            annotation.title = address;
            MKCoordinateRegion region = {location.coordinate, {0.04f, 0.04f}}; 
            [mapView setRegion:region animated:YES];
            [mapView addAnnotation:annotation];
            [mapView selectAnnotation:annotation animated:YES];
        }
    }];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - map view delegate
- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id ) annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    MKPinAnnotationView *annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"TollStationPin"];
    annotationView.pinColor = MKPinAnnotationColorRed;
    annotationView.animatesDrop = YES; 
    annotationView.canShowCallout = YES;
    [annotationView setSelected:YES animated:YES]; 
    return annotationView;
}

@end
