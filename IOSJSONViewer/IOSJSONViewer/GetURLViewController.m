//
//  GetURLViewController.m
//  IOSJSONViewer
//
//  Created by Joe on 6/10/11.
//  Copyright 2011 Coder Joes. All rights reserved.
//

#import "GetURLViewController.h"
#import "MainTableViewController.h"

@implementation GetURLViewController
@synthesize URLstring;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

-(IBAction) GetURL 
{
    MainTableViewController * mainTableViewController = [[MainTableViewController alloc] initWithNibName:@"MainTableViewController" bundle:nil];
    NSLog(@"Getting URL");
    NSURL *siteurl = [NSURL URLWithString:[URLstring text]];
    NSString *jsonreturn = [[NSString alloc] initWithContentsOfURL:siteurl];
    NSLog(@"Turning JSON into a Dictionary");
    mainTableViewController.MyJSONdictionary = [jsonreturn objectFromJSONString];
    
    [self.navigationController pushViewController:mainTableViewController animated:YES];
    
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
