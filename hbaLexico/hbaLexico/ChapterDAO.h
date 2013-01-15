//
//  ChapterDAO.h
//  hbaLexico
//
//  Created by Dário on 12/09/12.
//  Copyright (c) 2012 Dário & Jean. All rights reserved.
//


#import <Foundation/Foundation.h>

#import "sqlite3.h"
#import "Chapter.h"
#import "Conexao.h"


@interface ChapterDAO : NSObject{
    sqlite3 *db;
}

-(void) openDB;
-(void) createTable;
-(NSMutableArray *) getAllChapters;
-(int) insertRecord:(Chapter *) chapter;

@end
