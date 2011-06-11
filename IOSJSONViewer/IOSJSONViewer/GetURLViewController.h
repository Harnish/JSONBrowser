//
//  GetURLViewController.h
//  IOSJSONViewer
//
//  Created by Joe on 6/10/11.
//  Copyright 2011 Coder Joes. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GetURLViewController : UIViewController {
    UITextField * URLstring;
}

@property (retain, nonatomic) IBOutlet UITextField * URLstring;
-(IBAction) GetURL;
@end
