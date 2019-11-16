//
//  DetailViewController.m
//  CoreData
//
//  Created by ihub on 10/01/19.
//  Copyright © 2019 ecoihub. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize device;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.device) {
        [self.nameTxtFld setText:[self.device valueForKey:@"name"]];
        [self.versionTxtFld setText:[self.device valueForKey:@"version"]];
        [self.companyTxtFld setText:[self.device valueForKey:@"company"]];
    }
}

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

-(IBAction)saveBtnTpd:(id)sender{
        
    NSManagedObjectContext *context = [self managedObjectContext];
    
    if (self.device) {
        // Update existing device
        [self.device setValue:self.nameTxtFld.text forKey:@"name"];
        [self.device setValue:self.versionTxtFld.text forKey:@"version"];
        [self.device setValue:self.companyTxtFld.text forKey:@"company"];
        
    } else {
        // Create a new device
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Device" inManagedObjectContext:context];
        [newDevice setValue:self.nameTxtFld.text forKey:@"name"];
        [newDevice setValue:self.versionTxtFld.text forKey:@"version"];
        [newDevice setValue:self.companyTxtFld.text forKey:@"company"];
    }
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
}



@end
