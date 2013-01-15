//
//  DataListViewController.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 12/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import "HomeListViewController.h"
#import "MainListViewController.h"

@interface DataListViewController ()

@end

@implementation DataListViewController

@synthesize dataToShow = _dataToShow;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _dataToShow = [[NSArray alloc] initWithObjects:@"Mon profil", @"Videos", @"A propos", nil];
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
    return [_dataToShow count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomCell";
    UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //[cell.textLabel setFont:[UIFont fontWithName:@"zapfino" size:12.0]];
    cell.textLabel.text = [_dataToShow objectAtIndex:[indexPath row]];
    [cell.textLabel setTextAlignment:NSTextAlignmentCenter];

    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainListViewController *mainListViewController = [[MainListViewController alloc] initWithNibName:@"MainListViewController" bundle:nil];
        mainListViewController.texteAAfficher = [_dataToShow objectAtIndex:[indexPath row]];
        mainListViewController.title = [_dataToShow objectAtIndex:[indexPath row]];
        [self.navigationController pushViewController:mainListViewController animated:YES];
}

@end








