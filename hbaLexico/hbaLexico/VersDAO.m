//
//  VersDAO.m
//  hbaLexico
//
//  Created by Dário on 12/09/12.
//  Copyright (c) 2012 Dário & Jean. All rights reserved.
//

#import "VersDAO.h"


@implementation VersDAO

-(void) openDB {
    NSLog (@"Acessei OpenDB para Vers");
    
    Conexao *connection = [[Conexao alloc]init];
    
    db = [connection connectionDatabase];
}

-(void) createTable {
    
    char *err;
    
    NSString *sql = [NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS [vers] ([idVers] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, [idChapter] INTEGER REFERENCES [chapter] ([idChapter]), [vNumber] TEXT (4), [vers] TEXT (600));"];
    
    if (sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err) != SQLITE_OK) {
        sqlite3_close(db);
        NSAssert(0, @"Tabled failed to create");
    }
}

-(NSMutableArray *) getAllVers {
    
//    NSString *qSql = [NSString stringWithFormat:@"SELECT * FROM VERS"];
    
        NSString *qSql = [NSString stringWithFormat:@"SELECT * FROM VERS WHERE idChapter = 1"];
    
    sqlite3_stmt *statement;
    
    NSMutableArray *verss = [[NSMutableArray alloc] init];
    
    if (sqlite3_prepare(db, [qSql UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            Vers *vers = [[Vers alloc]init];
            
            vers.idVers = sqlite3_column_int(statement, 0);
            vers.idChapter = sqlite3_column_int(statement, 1);
            vers.vNumber = [NSString stringWithUTF8String:(char *)sqlite3_column_text(statement, 2)];
            vers.vers = [NSString stringWithUTF8String:(char *)sqlite3_column_text(statement, 3)];
            
            [verss addObject:vers];
            
            [vers release];
            
        }
    }
    return verss;
}

-(int) insertRecord:(Vers *)vers{
    
    int retorno = 0;
    
    NSLog(@"Acesso o método de inserir");
    
    NSString *sqlStr = [NSString stringWithFormat:@"INSERT INTO vers (idVers idChapter, vNumber, vers) VALUES(nil,?,?,?);"];
    
    const char *sql = [sqlStr UTF8String];
    
    sqlite3_stmt *statement;
    
    if (sqlite3_prepare_v2(db, sql, 01, &statement, nil) == SQLITE_OK) {
        //    sqlite3_bind_text(statement, 1, [chapter.bNumber UTF8String], -1, NULL);
        sqlite3_bind_text(statement, 2, [vers.vNumber UTF8String], -1, NULL);
        sqlite3_bind_text(statement, 3, [vers.vers UTF8String], -1, NULL);
    }
    
    if (sqlite3_step(statement) != SQLITE_DONE){
        NSAssert(0, @"Erro Updating table.");
        retorno = 1;
    }
    
    sqlite3_finalize(statement);
    
    return retorno;
    
}

@end
