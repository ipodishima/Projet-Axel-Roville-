//
//  OrdersViewController.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 13/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import "OrdersViewController.h"
#import "Order.h"
#import "OrdersListViewController.h"

@interface OrdersViewController ()

@end

@implementation OrdersViewController

@synthesize selectedOrder = _selectedOrder;

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
    
    //Order *selectedOrder = [_arrayOfOrders objectAtIndex:[indexPath row]];
    // Do any additional setup after loading the view from its nib.
    fbShareButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    fbShareButton.frame = CGRectMake(10, 10, 150, 40);
    [fbShareButton setTitle:@"Commander" forState:UIControlStateNormal];
    [fbShareButton addTarget:self action:@selector(shareOnFb:) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    
    orderDetails = [[UITextView alloc] initWithFrame:CGRectMake(0, 160, 310, 200)];
    [orderDetails setFont:[UIFont fontWithName:@"ArialMT" size:12.0]];
    orderDetails.textAlignment = NSTextAlignmentJustified;
    orderDetails.editable = FALSE;
    orderDetails.text = [NSString stringWithFormat:@"%@\n\n",_selectedOrder.details];
    
    resume = [[UITextView alloc] initWithFrame:CGRectMake(0, 60, 320, 100)];
    [resume setFont:[UIFont fontWithName:@"Arial-BoldMT" size:16.0]];
    resume.textAlignment = NSTextAlignmentJustified;
    resume.editable = FALSE;
    resume.text = [NSString stringWithFormat:@"%@ \n%@ \nPrix: 12,50€", _selectedOrder.name, _selectedOrder.year];
    UIImage *orderLabel = [UIImage imageNamed:_selectedOrder.label];
    UIImageView *orderLabelView = [[UIImageView alloc] initWithImage:orderLabel];
    orderLabelView.frame = CGRectMake(200, 0, 120, 120);
    
    
    [self.view addSubview:fbShareButton];
    [self.view addSubview:orderDetails];
    [self.view addSubview:resume];
    [self.view addSubview:orderLabelView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)shareOnFb:(id)sender    {
    orderDetails.text = @"On a cliqué!";
}

@end
