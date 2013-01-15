//
//  fakeDataListViewController.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 13/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import "fakeDataListViewController.h"
#import "DetailListViewController.h"
#import "ProfileViewController.h"
#import "AboutViewController.h"
//#import "WineListViewController.h"

@interface fakeDataListViewController ()

@end

@implementation fakeDataListViewController

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
    _dataToShow = [[NSArray alloc] initWithObjects:@"Mon profil", @"Vidéos", @"À propos", nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return [_dataToShow count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];     
    if (cell == nil) 
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [_dataToShow objectAtIndex:[indexPath row]];
    return cell;
}

  
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    switch (indexPath.row) {
        case 0:
            {
                ProfileViewController *profileViewController = [[ProfileViewController alloc] initWithNibName:@"ProfileViewController" bundle:nil];
                profileViewController.title = @"Mon profil";
                [self.navigationController pushViewController:profileViewController animated:YES];
                break;
            }
        case 2:
            {
                AboutViewController *about = [[AboutViewController alloc] initWithNibName:@"AboutViewController" bundle:nil];
                about.title = @"À propos";
                [self.navigationController pushViewController:about animated:YES];
                break;
            }
        default:
            {
                DetailListViewController *detailListViewController = [[DetailListViewController alloc] initWithNibName:@"DetailListViewController" bundle:nil];
                detailListViewController.texteAAfficher = [_dataToShow objectAtIndex:[indexPath row]];
                detailListViewController.title = [_dataToShow objectAtIndex:[indexPath row]];
                [self.navigationController pushViewController:detailListViewController animated:YES];
                break;
            }
    }
;
     
}

@end






