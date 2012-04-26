//
//  TollStationMapViewController.h
//  highwaysh
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface TollStationMapViewController : UIViewController <MKMapViewDelegate>
{
    MKMapView *mapView;
    NSString *address;
}
@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) NSString *address;
@end
