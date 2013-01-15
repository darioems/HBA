//
//  ChapterDAO.m
//  hbaLexico
//
//  Created by Dário on 12/09/12.
//  Copyright (c) 2012 Dário & Jean. All rights reserved.
//
#import "ChapterDAO.h"

@implementation ChapterDAO

-(void) openDB{
    
    NSLog(@"Acessei OpenDB para Chapter");
    
    Conexao *conexao = [[Conexao alloc]init];
    
    db = [conexao connectionDatabase];
    
}


-(void) createTable {
    char *err;
    
    NSString *sql = [NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS [chapter] ([idChapter] INTEGER PRIMARY KEY AUTOINCREMENT, [bNumber] INTEGER REFERENCES [bibleBooks] ([bNumber]), [cNumber] TEXT(4), [obs] TEXT);"];
    
    if (sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err)!= SQLITE_OK) {
        sqlite3_close(db);
        NSAssert(0, @"Tabled failed to create");
        
    }
}

-(NSMutableArray *) getAllChapters {
    NSString *qSql = [NSString stringWithFormat:@"SELECT * FROM chapter"];
    
    sqlite3_stmt *statement;
    
    NSMutableArray *chapters = [[NSMutableArray alloc] init];
    
    if (sqlite3_prepare_v2(db, [qSql UTF8String], -1, &statement, nil) == SQLITE_OK) {
        
        while ( sqlite3_step(statement) == SQLITE_ROW) {
        
            Chapter *chapter = [[Chapter alloc]init];
            chapter.idChapter = sqlite3_column_int(statement, 0);
            chapter.bNumber = sqlite3_column_int (statement, 1);
            chapter.cNumber = [NSString stringWithUTF8String:(char *)sqlite3_column_text(statement, 2)];
            //chapter.obs = [NSString stringWithUTF8String:(char *)sqlite3_column_text(statement, 3)];
            
            [chapters addObject:chapter];
            
            [chapter release];
        }
    }
    return chapters;
}

-(int) insertRecord:(Chapter *)chapter{
    
    int retorno = 0;
    
    NSLog(@"Acesso o método de inserir");
    
    NSString *sqlStr = [NSString stringWithFormat:@"INSERT INTO chapter (idChapter, bNumber, cNumber, obs) VALUES(nil,?,?,?);"];
    
    const char *sql = [sqlStr UTF8String];
    
    sqlite3_stmt *statement;
    
    if (sqlite3_prepare_v2(db, sql, 01, &statement, nil) == SQLITE_OK) {
    //    sqlite3_bind_text(statement, 1, [chapter.bNumber UTF8String], -1, NULL);
        sqlite3_bind_text(statement, 2, [chapter.cNumber UTF8String], -1, NULL);
        sqlite3_bind_text(statement, 3, [chapter.obs UTF8String], -1, NULL);
    }
    
    if (sqlite3_step(statement) != SQLITE_DONE){
        NSAssert(0, @"Erro Updating table.");
        retorno = 1;
    }
    
    sqlite3_finalize(statement);
    
    return retorno;
    
}

@end
