//
//  AppDelegate.m
//  Projet Axel Rovillé
//
//  Created by Axel Rovillé on 12/01/13.
//  Copyright (c) 2013 Axel Rovillé. All rights reserved.
//

#import "AppDelegate.h"
#import "WineListViewController.h"
#import "CoursViewController.h"
#import "OrdersViewController.h"
#import "WineLoadViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;
 

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.tabBarController = [[UITabBarController alloc] init];
    
    
   fakeDataListViewController  *dataListViewController = [[fakeDataListViewController alloc] initWithStyle:UITableViewStylePlain];
    dataListViewController.title = @"Accueil";
    UINavigationController *homeNavigationController = [[UINavigationController alloc] initWithRootViewController: dataListViewController];
    homeNavigationController.title = @"Accueil";

    
    
    //WineListViewController *wineListViewController = [[WineListViewController alloc] initWithNibName:@"WineListViewController" bundle:nil];
    //wineListViewController.title = @"Vins";
    
    WineLoadViewController *wineLoadViewController = [[WineLoadViewController alloc] initWithNibName:@"WineLoadViewController" bundle:nil];
    wineLoadViewController.title = @"Vins";
    UINavigationController *wineListNavigationController = [[UINavigationController alloc] initWithRootViewController: wineLoadViewController];
    wineListNavigationController.title = @"Vins";
    
    
    CoursViewController *coursViewController = [[CoursViewController alloc] initWithNibName:@"CoursViewController" bundle:nil];
    coursViewController.title = @"Cours";
    
    OrdersViewController *ordersViewController = [[OrdersViewController alloc] initWithNibName:@"OrdersViewController" bundle:nil];
    ordersViewController.title = @"Commandes";
    
    _tabBarController.viewControllers = [NSArray arrayWithObjects:/*_dataListViewController,*/homeNavigationController, wineListNavigationController, coursViewController, ordersViewController, nil];
    
    
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    //_dataListViewController = [[DataListViewController alloc] initWithStyle:UITableViewStylePlain];
    //navigationController = [[UINavigationController alloc] initWithRootViewController:_dataListViewController];
    //[navigationController setViewControllers:_navController];
     [_window setRootViewController:_tabBarController];
     
    [self.window makeKeyAndVisible];
    return YES;
}

@end
