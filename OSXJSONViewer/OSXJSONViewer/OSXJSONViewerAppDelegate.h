//
//  OSXJSONViewerAppDelegate.h
//  OSXJSONViewer
//
//  Created by Joe on 6/10/11.
//  Copyright 2011 Coder Joes. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface OSXJSONViewerAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    NSViewController * viewController;
    NSTextField * MyURL;
}

@property (assign) IBOutlet NSWindow *window;
@property (retain) IBOutlet NSTextField *MyURL;
@property (retain) NSViewController *viewController;
@end
