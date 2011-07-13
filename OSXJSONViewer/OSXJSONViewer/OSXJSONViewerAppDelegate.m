//
//  OSXJSONViewerAppDelegate.m
//  OSXJSONViewer
//
//  Created by Joe on 6/10/11.
//  Copyright 2011 Coder Joes. All rights reserved.
//

#import "OSXJSONViewerAppDelegate.h"

@implementation OSXJSONViewerAppDelegate

@synthesize window;
@synthesize MyURL;
@synthesize viewController;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSViewController * viewController = [[NSViewController alloc] initWithNibName:@"URLWindow" bundle:nil];
    NSURL *siteurl = [NSURL URLWithString:[MyURL text]];
    //NSString *jsonreturn = [[NSString alloc] initWithContentsOfURL:siteurl];
    //viewController.MyJSONdictionary = [jsonreturn objectFromJSONString];
    [self setViewController:viewController];
   // [self.navigationController pushViewController:mainTableViewController animated:YES];
}

@end
