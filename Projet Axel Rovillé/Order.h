//
//  Order.h
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 15/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Order : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *year;
@property (nonatomic, strong) NSString *details;
@property (nonatomic, strong) NSString *label;
@property (nonatomic, strong) NSString *price;
@end
