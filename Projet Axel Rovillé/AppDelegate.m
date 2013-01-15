//
//  AppDelegate.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 12/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import "AppDelegate.h"
#import "CoursViewController.h"
#import "WineLoadViewController.h"
//#import <FacebookSDK/FacebookSDK.h>
//#import "SCLoginViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;
//@synthesize fbNavController = _fbNavController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.tabBarController = [[UITabBarController alloc] init];
    
    
   fakeDataListViewController  *dataListViewController = [[fakeDataListViewController alloc] initWithStyle:UITableViewStylePlain];
    dataListViewController.title = @"Accueil";
    UINavigationController *homeNavigationController = [[UINavigationController alloc] initWithRootViewController: dataListViewController];
    homeNavigationController.title = @"Accueil";
    
    WineLoadViewController *wineLoadViewController = [[WineLoadViewController alloc] initWithNibName:@"WineLoadViewController" bundle:nil];
    wineLoadViewController.title = @"Vins";
    UINavigationController *wineListNavigationController = [[UINavigationController alloc] initWithRootViewController: wineLoadViewController];
    wineListNavigationController.title = @"Vins";
    
    CoursViewController *coursViewController = [[CoursViewController alloc] initWithNibName:@"CoursViewController" bundle:nil];
    coursViewController.title = @"Cours";
    
//    OrdersListViewController *ordersListViewController = [[OrdersListViewController alloc] initWithNibName:@"OrdersListViewController" bundle:nil];
//    ordersListViewController.title = @"Commandes";
//    UINavigationController *ordersNavigationController = [[UINavigationController alloc] initWithRootViewController:ordersListViewController];
//    ordersNavigationController.title = @"Commandes";
    
    _tabBarController.viewControllers = [NSArray arrayWithObjects:/*_dataListViewController,*/homeNavigationController, wineListNavigationController, coursViewController/*, ordersNavigationController*/, nil];

    self.window.backgroundColor = [UIColor whiteColor];;
     [_window setRootViewController:_tabBarController];
     
    [self.window makeKeyAndVisible];
    return YES;
}

@end
