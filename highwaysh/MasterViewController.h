//
//  MasterViewController.h
//  highwaysh
//
//  Created by Yue Ni on 12-4-8.
//  Copyright (c) 2012年 Tongji. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
