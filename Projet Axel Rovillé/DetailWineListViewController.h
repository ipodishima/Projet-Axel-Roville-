//
//  OrdersViewController.h
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 13/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wine.h"

@interface DetailWineListViewController : UIViewController
{
    UIButton *orderItem;
    Wine *selectedWineToShowDetails;
    UIImageView *labelView;
    __weak IBOutlet UILabel *resume;
    __weak IBOutlet UITextView *details;
    int nbOfOrders;
}

@property (nonatomic, strong) Wine *selectedWine;


@end
