//
//  DataController.m
//  FileDemoList
//
//  Created by han pyanfield on 11-10-20.
//  Copyright (c) 2011年 pyanfield. All rights reserved.
//

#import "DataController.h"
#import "Book.h"

@interface DataController ()

@property (nonatomic,copy,readwrite) NSMutableArray *bookList;

- (void)createBooksDemoData;

@end

//-------------------------------

@implementation DataController

@synthesize bookList;

- (id)init{
    if (self = [super init]) {
        bookList = [[NSMutableArray alloc] init];
        [self createBooksDemoData];
    }
    return self;
}

- (void)setBookList:(NSMutableArray *)newList
{
    if (bookList != newList ) {
        bookList = [newList mutableCopy];
    }
}

- (NSInteger)countOfBooks
{
    return [bookList count];
}

- (Book *)objectInListAtIndex:(NSInteger)theIndex
{
    return [bookList objectAtIndex:theIndex];
}

- (void)createBooksDemoData
{
    NSLog(@">>>>>createBooksDemoData");
    NSFileManager *fm = [NSFileManager defaultManager];
    //得到所有的Documents文件夹里的文件及文件夹列表
    NSArray *docsPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);    
    //得到Documents文件夹的位置
    NSString *documentDir = [docsPaths objectAtIndex:0];
    
    //建立一个新的文件夹
    NSString *newDir;
    newDir = [documentDir stringByAppendingPathComponent:@"PDFFiles"];
    
    if ([fm createDirectoryAtPath:newDir withIntermediateDirectories:YES attributes:nil error:NULL] == NO) {
        NSLog(@"Create PDF content folder failed!");
    }
    //获取新建的文件夹下的文件信息
    NSError *error = nil;
    NSArray *fileList = [[NSArray alloc] init];
    fileList = [fm contentsOfDirectoryAtPath:newDir error:&error];

    //NSLog(@"Documents Dir %@",documentDir);
    //NSLog(@"Count of fileList %d",[fileList count]);
    
    NSUInteger count = [fileList count];
    for (NSUInteger i = 0; i < count; i++)
    {
        NSLog(@">> %@", [fileList objectAtIndex: i]);
        Book *book = [[Book alloc] init];
        book.name = [fileList objectAtIndex:i];
        book.author = @"pyanfield";
        [bookList addObject:book];
        //NSLog(@"bookList count>> %d",[bookList count]);
    }
    //NSLog(@"<<<<<<createBooksDemoData");
}

@end
