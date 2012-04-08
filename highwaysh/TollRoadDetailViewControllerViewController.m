//
//  TollRoadDetailViewControllerViewController.m
//  highwaysh
//

#import "TollRoadDetailViewControllerViewController.h"

@interface TollRoadDetailViewControllerViewController ()

@end

@implementation TollRoadDetailViewControllerViewController
@synthesize tollRoad;
@synthesize nameLabel, chargeTypeLabel, lengthLabel;
@synthesize startDateLabel;
@synthesize endDateLabel;
@synthesize chargingLengthLabel;
@synthesize startLabel;
@synthesize destinationLabel;
@synthesize tollStationInMainRoadLabel;
@synthesize tollStationInRingRoadLabel;;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.nameLabel.text = tollRoad.name;
    self.chargeTypeLabel.text = tollRoad.chargeType;
    self.lengthLabel.text = tollRoad.length;
    self.startDateLabel.text = tollRoad.startDate;
    self.endDateLabel.text = tollRoad.endDate;
    self.chargingLengthLabel.text = tollRoad.chargingLength;
    self.startLabel.text = tollRoad.start;
    self.destinationLabel.text = tollRoad.destination;
    self.tollStationInMainRoadLabel.text = tollRoad.tollStationInMainRoad;
    self.tollStationInRingRoadLabel.text = tollRoad.tollStationInRingRoad;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
