//
//  DataController.h
//  FileDemoList
//
//  Created by han pyanfield on 11-10-20.
//  Copyright (c) 2011年 pyanfield. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;

@interface DataController : NSObject


- (NSInteger)countOfBooks;
- (Book *)objectInListAtIndex:(NSInteger)theIndex;

@end
