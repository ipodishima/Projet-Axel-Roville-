//
//  DetailListViewController.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 13/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import "DetailListViewController.h"

@implementation DetailListViewController
@synthesize texteAAfficher = _texteAAfficher;

- (void)viewDidLoad {
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
    [self.view addSubview:_label];
    _label.text = _texteAAfficher;
    [super viewDidLoad];
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end