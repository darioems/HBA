//
//  BibleBook.h
//  ExemploSqlite
//
//  Created by Dário on 10/09/12.
//  Copyright (c) 2012 Dário. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject {

@private
    int bNumber;
    NSString *bName;
    NSString *bsName;
}
//+(NSMutableArray *) getAllBooks;

@property int bNumber;
@property (nonatomic, retain) NSString * bName;
@property (nonatomic, retain) NSString * bsName;


@end
