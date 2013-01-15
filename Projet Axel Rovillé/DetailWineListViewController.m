//
//  OrdersViewController.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 13/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import "DetailWineListViewController.h"
#import "Wine.h"
#import "WineLoadViewController.h"

@interface DetailWineListViewController ()

@end

@implementation DetailWineListViewController

@synthesize selectedWine = _selectedWine;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    details.editable = FALSE;
    details.text = [NSString stringWithFormat:@"%@\n\n",_selectedWine.details];
    
    [resume setFont:[UIFont fontWithName:@"Arial-BoldMT" size:16.0]];
    resume.text = [NSString stringWithFormat:@"%@ \n%@ \nPrix: 12,50€", _selectedWine.name, _selectedWine.year];
    labelView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:_selectedWine.label]];
    labelView.frame = CGRectMake(20, 20, 100, 100);
    orderItem = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [orderItem addTarget:self action:@selector(addOrder:) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    orderItem.frame = CGRectMake(80, 320, 160, 40);
    [orderItem setTitle:@"Commander" forState:UIControlStateNormal];
    [self.view addSubview:labelView];
    [self.view addSubview:orderItem];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)addOrder:(id)sender    {
    nbOfOrders++;
    self.navigationController.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d",nbOfOrders];
}

@end
