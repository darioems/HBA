//
//  BibleBookDAO.h
//  ExemploSqlite
//
//  Created by Dário on 10/09/12.
//  Copyright (c) 2012 Dário. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "sqlite3.h"
#import "Book.h"
#import "Conexao.h"


@interface BookDAO : NSObject 
{
    sqlite3 *db;
}

-(void) openDB;
-(void) createTable;
-(NSMutableArray *) getAllBooks;
-(int) insertRecord:(Book *) book;

@end
