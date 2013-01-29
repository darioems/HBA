//
//  BibleBook.m
//  ExemploSqlite
//
//  Created by Dário on 10/09/12.
//  Copyright (c) 2012 Dário. All rights reserved.
//

#import "Book.h"

//#import "Conexao.h"

@implementation Book

@synthesize bNumber;
@synthesize bName;
@synthesize bsName;


/*+(NSMutableArray *) getAllBooks {
    NSString *qSql = [NSString stringWithFormat:@"SELECT * FROM BIBLEBOOKS"];
    sqlite3_stmt *statement;
    NSMutableArray *books = [[NSMutableArray alloc] init];
    if (sqlite3_prepare_v2(db, [qSql UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while ( sqlite3_step(statement) == SQLITE_ROW) {
            Book *bibleBooks = [[Book alloc]init];
            bibleBooks.idBook = sqlite3_column_int(statement, 0);
            bibleBooks.bName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(statement, 1)];
            bibleBooks.bsName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(statement, 2)];
            [books addObject:bibleBooks];
            
            [bibleBooks release];
        }
    }
    return books;
}*/

@end
