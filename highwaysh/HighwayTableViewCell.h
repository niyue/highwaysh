//
//  HighwayTableViewCell.h
//  highwaysh
//

#import <UIKit/UIKit.h>

@interface HighwayTableViewCell : UITableViewCell
{
    UIImageView *imageView;
    UILabel *titleLabel;
    UILabel *descriptionLabel;
}

@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UILabel *descriptionLabel;

@end
