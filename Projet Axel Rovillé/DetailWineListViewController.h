//
//  DetailWineListViewController.h
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 14/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailWineListViewController : UIViewController
{
    UITextView *_detailsLabel;
    UIImageView *_labelImageView;
}


@property (nonatomic, strong) NSString *detailsToDisplay;
@property (nonatomic, strong) NSString *imageToDisplay;

@end
