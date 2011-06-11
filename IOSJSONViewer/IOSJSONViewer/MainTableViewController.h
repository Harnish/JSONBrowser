//
//  MainTableViewController.h
//  IOSJSONViewer
//
//  Created by Joe on 6/10/11.
//  Copyright 2011 Coder Joes. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MainTableViewController : UITableViewController {
    NSDictionary * MyJSONdictionary;
}
@property (retain, nonatomic) NSDictionary * MyJSONdictionary;
@end
