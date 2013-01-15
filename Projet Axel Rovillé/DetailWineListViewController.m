//
//  DetailWineListViewController.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 14/01/13.
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
    //On affiche l'étiquette du vin
    
    selectedWineToShowDetails = _selectedWine;
    UIImage *selectedWineLabel = [UIImage imageNamed:_selectedWine.label];
    _labelImageView = [[UIImageView alloc] initWithImage:selectedWineLabel];
    _labelImageView.frame = CGRectMake(80, 0, 160, 150);
    
    //On affiche la description du vin
    _detailsLabel = [[UITextView alloc] initWithFrame:CGRectMake(10, 160, 300, 300)];
    [_detailsLabel setFont:[UIFont fontWithName:@"ArialMT" size:15.0]];
    _detailsLabel.textAlignment = NSTextAlignmentJustified;
    _detailsLabel.editable = FALSE;
    _detailsLabel.text = _selectedWine.details;
  
    //On ajoute ces vues à la vue principale
    [self.view addSubview:_labelImageView];
    [self.view addSubview:_detailsLabel];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
