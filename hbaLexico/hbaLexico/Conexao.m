//
//  Conexao.m
//  Legislacao
//
//  Created by Dário on 23/03/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Conexao.h"


@implementation Conexao

-(NSString *) filePath {
    
    
    NSString *paths = [[NSBundle mainBundle] pathForResource:@"BibleHebrew" ofType:@"sqlite"];
    //    NSLog(@"%@",paths);
    
    return paths;
    
    // Quando a base já está criada no Iphone, só precisaremos localizar onde o arquivo está. Utilizar as linhas comentadas abaixo e comentar as acima.
    
    //  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    // NSString *documentDir = [paths objectAtIndex:0];
    // return [documentDir stringByAppendingPathComponent:@"BibleHebrew.sqlite"];
}


-(sqlite3 *) connectionDatabase {
	
	sqlite3 *database;
	 
	 // Tenta abrir o banco de dados utilizado o caminho retornado pelo função `filePath`;
    
	 if (sqlite3_open([[self filePath]UTF8String], &database) == SQLITE_OK) {
	 
         return database;
	 }
	 
	 return nil;
	
}


@end
