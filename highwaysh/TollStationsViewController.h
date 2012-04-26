//
//  TollStationsViewController.h
//  highwaysh
//

#import <UIKit/UIKit.h>
#import <iAd/ADBannerView.h>


@interface TollStationsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, ADBannerViewDelegate>
{
    NSArray *tollStations;
    ADBannerView *iAdBannerView;
    UITableView *tollStationsTableView;
}
@property (strong, nonatomic) NSArray *tollStations;
@property (strong, nonatomic) IBOutlet ADBannerView *iAdBannerView;
@property (strong, nonatomic) IBOutlet UITableView *tollStationsTableView;
@end
