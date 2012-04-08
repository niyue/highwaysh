//
//  MasterViewController.h
//  highwaysh
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController
{
    NSArray *highways;
}

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) NSArray *highways;
           

@end
