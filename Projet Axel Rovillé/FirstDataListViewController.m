//
//  FirstDataListViewController.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 12/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import "FirstDataListViewController.h"
#import "DetailListViewController.h"


@implementation FirstDataListViewController

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
    _dataToShow = [[NSArray alloc] initWithObjects:@"Mon profil", @"Vidéos", @"À propos", nil];
    
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
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell==nil)   {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [_dataToShow objectAtIndex:[indexPath row]];
    
    return cell;
}



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailListViewController *detailListViewController = [[DetailListViewController alloc] initWithNibName:@"DetailListViewController" bundle:nil];
    detailListViewController.texteAAfficher = [_dataToShow objectAtIndex:[indexPath row]];
    detailListViewController.title = [_dataToShow objectAtIndex:[indexPath row]];
    
    [self.navigationController pushViewController:detailListViewController animated:YES];
}

@end
