//
//  Highway.m
//  highwaysh
//

#import "Highway.h"
#import "TollRoad.h"

@interface Highway ()
+(NSString *)dataPath;
+(NSArray *)convertToTollRoads:(NSArray *)tollRoadDicts;
@end

@implementation Highway
@synthesize code, name, description, openingDate, length, start, destination, exits, tollStations, tollRoads;

+(NSArray *)all {
    NSString *dataPath = [self dataPath];
    
    NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile:dataPath];
    NSArray *highways = [data objectForKey:@"highways"];
    NSMutableArray *hws = [[NSMutableArray alloc] initWithCapacity:[highways count]];
    for (NSDictionary *highway in highways) {
        Highway *hw = [[Highway alloc] init];
        hw.code = [highway objectForKey:@"code"];
        hw.name = [highway objectForKey:@"name"];
        hw.description = [highway objectForKey:@"description"];
        hw.openingDate = [highway objectForKey:@"openingDate"];
        hw.length = [highway objectForKey:@"length"];
        hw.start = [highway objectForKey:@"start"];
        hw.destination = [highway objectForKey:@"destination"];
        hw.exits = [highway objectForKey:@"exits"];
        hw.tollStations = [highway objectForKey:@"tollStations"];

        NSArray *tollRoadDicts = [highway objectForKey:@"tollRoads"];
        hw.tollRoads = [self convertToTollRoads:tollRoadDicts];
        [hws addObject:hw];
    }
    return hws;
}

// private methods
+(NSString *)dataPath {
    return [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];;
}

+(NSArray *)convertToTollRoads:(NSArray *)tollRoadDicts {
    NSMutableArray *roads = [[NSMutableArray alloc] init];
    for (NSDictionary *tollRoadDict in tollRoadDicts) {
        TollRoad *tollRoad = [[TollRoad alloc] init];
        tollRoad.name = [tollRoadDict objectForKey:@"name"];
        tollRoad.chargeType = [tollRoadDict objectForKey:@"chargeType"];
        tollRoad.length = [tollRoadDict objectForKey:@"length"];
        tollRoad.startDate = [tollRoadDict objectForKey:@"startDate"];
        tollRoad.endDate = [tollRoadDict objectForKey:@"endDate"];
        tollRoad.chargingLength = [tollRoadDict objectForKey:@"chargingLength"];
        tollRoad.start = [tollRoadDict objectForKey:@"start"];
        tollRoad.destination = [tollRoadDict objectForKey:@"destination"];
        tollRoad.tollStationInMainRoad = [tollRoadDict objectForKey:@"tollStationInMainRoad"];
        tollRoad.tollStationInRingRoad = [tollRoadDict objectForKey:@"tollStationInRingRoad"];
        [roads addObject:tollRoad];
    }
    return roads;
}
@end
