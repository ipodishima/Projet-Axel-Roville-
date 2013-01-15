//
//  ProfileViewController.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 15/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import "ProfileViewController.h"
#import "HelloYouViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

@synthesize firstNameTextField, nameTextField, OKButton;

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
    // Do any additional setup after loading the view from its nib.
    [OKButton addTarget:self action:@selector(textFieldShouldReturn:) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"Bouton Return");
    [textField resignFirstResponder];
    HelloYouViewController *hello = [[HelloYouViewController alloc] initWithNibName:@"HelloYouViewController" bundle:nil];
    hello.firstname = firstNameTextField.text;
    hello.name = nameTextField.text;
    [self.navigationController pushViewController:hello animated:YES];

    return YES;
}

@end