//
//  InterfaceController.m
//  WatchKit-Starter-Kit WatchKit Extension
//
//  Created by Clayton Rieck on 11/19/14.
//  Copyright (c) 2014 Clayton Rieck. All rights reserved.
//

#import "InterfaceController.h"
#import "WSKPeopleRowController.h"

static NSString * const kWSKDefaultTableRowType = @"defaultRow";

@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *peopleTable;
@property (strong, nonatomic) NSArray *peopleNames;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        
        NSArray *people = @[@"Larry", @"Janice", @"Clayton"];
        [self setupTableWithData:people];
    }
    return self;
}

- (void)setupTableWithData:(NSArray *)data
{
    [self.peopleTable setNumberOfRows:data.count withRowType:kWSKDefaultTableRowType];
    
    for (NSInteger i = 0; i < self.peopleTable.numberOfRows; i++) {
        WSKPeopleRowController *rowController = [self.peopleTable rowControllerAtIndex:i];
        [rowController.personLabel setText:data[i]];
    }
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



