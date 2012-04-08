//
//  HighwayDetailViewController.h
//  highwaysh
//

#import <UIKit/UIKit.h>
#import "Highway.h"

@interface HighwayDetailViewController : UITableViewController
{
    Highway *highway;
    UILabel *nameLabel;
    UILabel *openingDateLabel;
    UILabel *lengthLabel;
    UILabel *startLabel;
    UILabel *destinationLabel;
    UILabel *exitNumber;
}
@property (strong, nonatomic) Highway *highway;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *openingDateLabel;
@property (strong, nonatomic) IBOutlet UILabel *lengthLabel;
@property (strong, nonatomic) IBOutlet UILabel *startLabel;
@property (strong, nonatomic) IBOutlet UILabel *destinationLabel;
@property (strong, nonatomic) IBOutlet UILabel *exitNumber;
@end
