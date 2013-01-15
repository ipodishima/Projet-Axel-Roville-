//
//  HelloYouViewController.h
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 15/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloYouViewController : UIViewController
{
    UILabel *username;
}

@property (nonatomic, strong)   NSString *name;
@property (nonatomic, strong)   NSString *firstname;
@property (weak, nonatomic) IBOutlet UILabel *bonjourLabel;

@end
