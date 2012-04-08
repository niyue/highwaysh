//
//  TollRoadDetailViewControllerViewController.h
//  highwaysh
//

#import <UIKit/UIKit.h>
#import "TollRoad.h"

@interface TollRoadDetailViewControllerViewController : UITableViewController
{
    TollRoad *tollRoad;
    UILabel *nameLabel;
    UILabel *chargeTypeLabel;
    UILabel *lengthLabel;
    UILabel *startDateLabel;
    UILabel *endDateLabel;
    UILabel *chargingLengthLabel;
    UILabel *startLabel;
    UILabel *destinationLabel;
    UILabel *tollStationInMainRoadLabel;
    UILabel *tollStationInRingRoadLabel;
}
@property (strong, nonatomic) TollRoad *tollRoad;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *chargeTypeLabel;
@property (strong, nonatomic) IBOutlet UILabel *lengthLabel;
@property (strong, nonatomic) IBOutlet UILabel *startDateLabel;
@property (strong, nonatomic) IBOutlet UILabel *endDateLabel;
@property (strong, nonatomic) IBOutlet UILabel *chargingLengthLabel;
@property (strong, nonatomic) IBOutlet UILabel *startLabel;
@property (strong, nonatomic) IBOutlet UILabel *destinationLabel;
@property (strong, nonatomic) IBOutlet UILabel *tollStationInMainRoadLabel;
@property (strong, nonatomic) IBOutlet UILabel *tollStationInRingRoadLabel;
@end
