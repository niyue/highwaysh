//
//  TollRoad.h
//  highwaysh
//

#import <UIKit/UIKit.h>

@interface TollRoad : NSObject
{
    NSString *name;
    NSString *chargeType;
    NSString *length;
    NSString *startDate;
    NSString *endDate;
    NSString *chargingLength;
    NSString *start;
    NSString *destination;
    NSString *tollStationInMainRoad;
    NSString *tollStationInRingRoad;
}
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *chargeType;
@property (strong, nonatomic) NSString *length;
@property (strong, nonatomic) NSString *startDate;
@property (strong, nonatomic) NSString *endDate;
@property (strong, nonatomic) NSString *chargingLength;
@property (strong, nonatomic) NSString *start;
@property (strong, nonatomic) NSString *destination;
@property (strong, nonatomic) NSString *tollStationInMainRoad;
@property (strong, nonatomic) NSString *tollStationInRingRoad;
@end
