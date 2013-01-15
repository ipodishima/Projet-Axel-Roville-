//
//  SampleLoadViewController.m
//  MSToolTips
//
//  Created by Marian Paul on 24/10/12.
//  Copyright (c) 2012 Marian Paul. All rights reserved.
//

#import "WineLoadViewController.h"
#import "Wine.h"
#import "DetailWineListViewController.h"

@interface WineLoadViewController ()

@end

@implementation WineLoadViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1)
    // Alloc the view which shows activity
    _activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    // Set it to the right on navigation bar
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:_activity];
    
    // Load the JSON from the file
    [[DownloadManager shared] loadLocalFileName:@"vins" withDelegate:self];
    
    // If your app will be connected, then you just have to replace the previous line with
    //
    //     NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:yourURL];
    //     [[DownloadManager shared] loadRequest:request withDelegate:self];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_arrayOfWines count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Get the wine for the row
    Wine *w = [_arrayOfWines objectAtIndex:indexPath.row];
    
    // Display!
    cell.textLabel.text = [NSString stringWithFormat:@"%@", w.name];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", w.year];
    cell.imageView.image = [UIImage imageNamed:w.label];

    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    NSLog(@"On a cliqué sur un vin");
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    Wine *selectedWine = [_arrayOfWines objectAtIndex:indexPath.row];
    DetailWineListViewController *detailWineListViewController = [[DetailWineListViewController alloc]initWithNibName:@"DetailWineListViewController" bundle:nil];
    detailWineListViewController.title = cell.textLabel.text;
    detailWineListViewController.imageToDisplay = selectedWine.label;
    detailWineListViewController.detailsToDisplay = selectedWine.details;
    
    [self.navigationController pushViewController:detailWineListViewController animated:YES];
//    NSLog(@"On a fini de cliquer");
    
}

// 4) implement protocol
#pragma mark - DownloadDelegate protocol

- (void) downloadOperation:(DownloadOperation *)operation didFailWithError:(NSError *)error
{
    // Stop activity indicator
    [_activity stopAnimating];
    NSLog(@"%@", error);
    // Todo : handle the error
}

- (void) downloadOperation:(DownloadOperation *)operation didStartLoadingRequest:(NSMutableURLRequest *)request
{
    // Start the activity indicator
    [_activity startAnimating];
}

- (void) downloadOperation:(DownloadOperation *)operation didLoadObject:(id)object
{
    // Stop activity indicator
    [_activity stopAnimating];
    
    // Now, we need to go through all the objects loaded in the JSON, parse it, and create new Objective-C objects
    // First, remove previous objects in instance array
    [_arrayOfWines removeAllObjects];
    
    // Allocate it if not already. This is called lazy loading. Remember, we are on mobile devices, where RAM use is really important
    if (!_arrayOfWines)
        _arrayOfWines = [NSMutableArray new];
    
    // Now enumerate the json array
    for (NSDictionary *dic in object)
    {
        // Create a new contact
        Wine *w = [Wine new];
        
        // Set its properties from JSON 'object'
        w.name = [dic objectForKey:@"name"];
        w.year = [dic objectForKey:@"year"];
        w.details = [dic objectForKey:@"details"];
        w.label = [dic objectForKey:@"label"];
        
        // Add it to the array
        [_arrayOfWines addObject:w];
    }
    
    // Just for fun, sort the array
    [_arrayOfWines sortUsingDescriptors:[NSArray arrayWithObject:[[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES]]];
    
    // Try these
    // [_arrayOfWines sortUsingDescriptors:[NSArray arrayWithObject:[[NSSortDescriptor alloc] initWithKey:@"lastName" ascending:YES]]];
    // [_arrayOfWines sortUsingDescriptors:[NSArray arrayWithObject:[[NSSortDescriptor alloc] initWithKey:@"age" ascending:YES]]];
    // Pretty cool no?
    
    // We are almost done. Please note that the parsing is made here just to avoid complexification. You should always create a model like YouTubeManager class which handles the parsing and give the data to the controller. Remember the MVC pattern
    
    // When we finished, reload the table view
    [self.tableView reloadData];
}

@end
