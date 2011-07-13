//
//  MainTableViewController.m
//  IOSJSONViewer
//
//  Created by Joe on 6/10/11.
//  Copyright 2011 Coder Joes. All rights reserved.
//

#import "MainTableViewController.h"
#import "JSONKit.h"

@implementation MainTableViewController
@synthesize MyJSONdictionary;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
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

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[MyJSONdictionary allKeys]count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }    

    if([[MyJSONdictionary objectForKey:[[MyJSONdictionary allKeys] objectAtIndex:indexPath.row]] isKindOfClass:[NSString class]]){
         cell.textLabel.text = [[MyJSONdictionary allKeys] objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = [MyJSONdictionary objectForKey:[[MyJSONdictionary allKeys] objectAtIndex:indexPath.row]];
        cell.accessoryType = UITableViewCellAccessoryNone;
    } else if ([[MyJSONdictionary objectForKey:[[MyJSONdictionary allKeys] objectAtIndex:indexPath.row]] isKindOfClass:[NSNumber class]]){
        cell.textLabel.text = [[MyJSONdictionary allKeys] objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = [[MyJSONdictionary objectForKey:[[MyJSONdictionary allKeys] objectAtIndex:indexPath.row]] stringValue];
        cell.accessoryType = UITableViewCellAccessoryNone;
    } else if ([[MyJSONdictionary objectForKey:[[MyJSONdictionary allKeys] objectAtIndex:indexPath.row]] isKindOfClass:[NSDictionary class]]){ 
        cell.textLabel.text = [[MyJSONdictionary allKeys] objectAtIndex:indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    } else {
        cell.textLabel.text = [[MyJSONdictionary allKeys] objectAtIndex:indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    // Configure the cell...
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
     if([[MyJSONdictionary objectForKey:[[MyJSONdictionary allKeys] objectAtIndex:indexPath.row]] isKindOfClass:[NSDictionary class]]){
     
        MainTableViewController * mainTableViewController = [[MainTableViewController alloc]initWithNibName:@"MainTableViewController" bundle:nil];
        mainTableViewController.MyJSONdictionary = [MyJSONdictionary objectForKey:[[MyJSONdictionary allKeys] objectAtIndex:indexPath.row]];
         mainTableViewController.title = [[MyJSONdictionary allKeys] objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:mainTableViewController animated:YES];
        [mainTableViewController release];
    }
}

@end
