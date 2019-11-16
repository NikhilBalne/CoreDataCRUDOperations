//
//  ViewController.h
//  CoreData
//
//  Created by ihub on 10/01/19.
//  Copyright © 2019 ecoihub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "DetailViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray *devices;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) AppDelegate *appDelegate;

@end

