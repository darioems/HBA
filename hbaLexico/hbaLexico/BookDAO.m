//
//  BibleBookDAO.m
//  ExemploSqlite
//
//  Created by Dário on 10/09/12.
//  Copyright (c) 2012 Dário. All rights reserved.
//

#import "BookDAO.h"

@implementation BookDAO

-(void) openDB{
    
    NSLog(@"Acessei OpenDB");
    
    Conexao *conexao = [[Conexao alloc]init];
    
    db = [conexao connectionDatabase];
    
}


-(void) createTable {
    char *err;
    
    NSString *sql = [NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS BIBLEBOOKS ([bNumber] INTEGER PRIMARY KEY NOT NULL CHECK(typeof ( 'bNumber' ) = 'integer'), [bName] TEXT, [bsName] TEXT);"];
    if (sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err)!= SQLITE_OK) {
        sqlite3_close(db);
        NSAssert(0, @"Tabled failed to create");
        
    }
}

-(NSMutableArray *) getAllBooks {
    
    NSString *qSql = [NSString stringWithFormat:@"SELECT * FROM book"];
    
    sqlite3_stmt *statement;
    
    NSMutableArray *books = [[NSMutableArray alloc] init];
    
    if (sqlite3_prepare_v2(db, [qSql UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while ( sqlite3_step(statement) == SQLITE_ROW) {
            Book *bibleBooks = [[Book alloc]init];
            bibleBooks.bNumber = sqlite3_column_int(statement, 0);
            bibleBooks.bName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(statement, 1)];
            bibleBooks.bsName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(statement, 2)];
            [books addObject:bibleBooks];
            
            [bibleBooks release];
        }
    }
    
    return books;
}

-(int) insertRecord:(Book *)book{
    int retorno = 0;
    
    NSLog(@"Acesso o método de inserir");
    
    NSString *sqlStr = [NSString stringWithFormat:@"INSERT INTO bibleBooks (idBooks, bName, bsName) VALUES(?,?,?);"];
    
    const char *sql = [sqlStr UTF8String];
    
    sqlite3_stmt *statement;
    
    if (sqlite3_prepare_v2(db, sql, 01, &statement, nil) == SQLITE_OK) {
        sqlite3_bind_text(statement, 1, [book.bName UTF8String], -1, NULL);
        sqlite3_bind_text(statement, 2, [book.bsName UTF8String], -1, NULL);
    }
    
    if (sqlite3_step(statement) != SQLITE_DONE){
        NSAssert(0, @"Erro Updating table.");
        retorno = 1;
    }
        
    sqlite3_finalize(statement);
    
    return retorno;
    
}

@end
