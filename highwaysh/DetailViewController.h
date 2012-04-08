//
//  DetailViewController.h
//  highwaysh
//
//  Created by Yue Ni on 12-4-8.
//  Copyright (c) 2012年 Tongji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
