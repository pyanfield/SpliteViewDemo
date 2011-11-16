//
//  BookDataDelegate.h
//  FileDemoList
//
//  Created by han pyanfield on 11-11-9.
//  Copyright (c) 2011年 pyanfield. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Book.h"

@protocol BookDataDelegate

- (void)sendBookDataToView:(Book *)curBook;

@end
