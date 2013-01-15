//
//  DetailWineListViewController.h
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 14/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wine.h"

@interface DetailWineListViewController : UIViewController
{
    Wine *selectedWineToShowDetails;
    UITextView *_detailsLabel;
    UIImageView *_labelImageView;
    UIButton *fbShareButton;
}

@property (nonatomic, strong) Wine *selectedWine;

@end
