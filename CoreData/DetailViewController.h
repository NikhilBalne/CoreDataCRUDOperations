//
//  DetailViewController.h
//  CoreData
//
//  Created by ihub on 10/01/19.
//  Copyright © 2019 ecoihub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <CoreData/CoreData.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *nameTxtFld;
@property (strong, nonatomic) IBOutlet UITextField *versionTxtFld;
@property (strong, nonatomic) IBOutlet UITextField *companyTxtFld;

@property (strong) NSManagedObject *device;

@end
