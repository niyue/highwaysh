//
//  Highway.h
//  highwaysh
//

#import <UIKit/UIKit.h>

@interface Highway : NSObject
{
    NSString *code;
    NSString *name;
    NSString *description;
    NSString *openingDate;
    NSString *length;
    NSString *start;
    NSString *destination;
    NSString *exits;
    NSArray *tollStations;
    NSArray *tollRoads;
}
@property (nonatomic, retain) NSString *code;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *openingDate;
@property (nonatomic, retain) NSString *length;
@property (nonatomic, retain) NSString *start;
@property (nonatomic, retain) NSString *destination;
@property (nonatomic, retain) NSString *exits;
@property (nonatomic, retain) NSArray *tollStations;
@property (nonatomic, retain) NSArray *tollRoads;

+(NSArray *)all;
@end
