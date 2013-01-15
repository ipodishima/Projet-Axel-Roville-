//
//  OrdersViewController.h
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 13/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Order.h"

@interface OrdersViewController : UIViewController
{
    IBOutlet UIButton *fbShareButton;
    UITextView *orderDetails;
    UITextView *resume;
    Order *selectedOrderToShowDetails;
}

@property (nonatomic, strong) Order *selectedOrder;


@end
