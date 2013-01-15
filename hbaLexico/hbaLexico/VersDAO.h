//
//  VersDAO.h
//  hbaLexico
//
//  Created by Dário on 12/09/12.
//  Copyright (c) 2012 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "sqlite3.h"
#import "Vers.h"
#import "Conexao.h"

@interface VersDAO : NSObject{
    
    sqlite3 *db;
}

-(void) openDB;
-(void) createTable;
-(NSMutableArray *) getAllVers;
-(int) insertRecord:(Vers *) vers;


@end
