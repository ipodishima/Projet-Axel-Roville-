//
//  FirstDataListViewController.h
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 12/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstDataListViewController : UITableViewController
{
    NSArray *dataToShow;
}

@property (nonatomic, strong) NSArray *dataToShow;

@end

