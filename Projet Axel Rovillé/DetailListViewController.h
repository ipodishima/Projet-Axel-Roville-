//
//  DetailListViewController.h
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 13/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailListViewController : UIViewController
{
    UILabel *_label;
}

@property (nonatomic, strong) NSString *texteAAfficher;

@end