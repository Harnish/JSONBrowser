//
//  DetailViewController.h
//  IOSJSONViewer
//
//  Created by Joseph Harnish on 6/10/11.
//  Copyright 2011 Coder Joes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
