//
//  HighwayDetailViewController.m
//  highwaysh
//

#import "HighwayDetailViewController.h"
#import "TollStationsViewController.h"
#import "TollRoadsViewController.h"

@interface HighwayDetailViewController ()

@end

@implementation HighwayDetailViewController
@synthesize highway;
@synthesize nameLabel, openingDateLabel, lengthLabel, startLabel, destinationLabel, exitNumber;


- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.navigationItem.title = [highway name];
    self.nameLabel.text = [highway name];
    self.lengthLabel.text = [highway length];
    self.openingDateLabel.text = [highway openingDate];
    self.startLabel.text = [highway start];
    self.destinationLabel.text = [highway destination];
    self.exitNumber.text = [highway exits];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowTollStations"]) {
        TollStationsViewController *tollStationsViewController = [segue destinationViewController];
        tollStationsViewController.tollStations = highway.tollStations;
    }
    else if ([[segue identifier] isEqualToString:@"ShowTollRoads"]) {
        TollRoadsViewController *tollRoadsViewController = [segue destinationViewController];
        tollRoadsViewController.tollRoads = highway.tollRoads;
    }
}

@end
