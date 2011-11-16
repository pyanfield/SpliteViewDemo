//
//  DetailViewController.h
//  FileDemoList
//
//  Created by han pyanfield on 11-10-20.
//  Copyright (c) 2011年 pyanfield. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookDataDelegate.h"
#import "Book.h"


@interface DetailViewController : UIViewController <UISplitViewControllerDelegate,BookDataDelegate>

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *bookNameLabel;
@property (nonatomic,strong) Book *book;

@end
