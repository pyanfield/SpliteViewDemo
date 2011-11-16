//
//  MasterViewController.h
//  FileDemoList
//
//  Created by han pyanfield on 11-10-20.
//  Copyright (c) 2011年 pyanfield. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookDataDelegate.h"

@class DataController;
@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong,nonatomic) DataController *dataController;

@property (assign,nonatomic) id<BookDataDelegate> delegate;

@end
