//
//  OrdersListViewController.h
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 15/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DownloadManager.h"

@interface WineLoadViewController : UITableViewController <DownloadDelegate>
{
    NSMutableArray *_arrayOfWines;
    UIActivityIndicatorView *_activity;
}
@end
