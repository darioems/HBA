//
//  lex_sufix.h
//  hbaLexico
//
//  Created by Dário on 28/01/13.
//  Copyright (c) 2013 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lex_sufix : NSObject {
    
    int lex_sufix_id;
    NSString *lex_sufix_letter;
}


@property int lex_sufix_id;
@property (nonatomic, retain) NSString *lex_sufix_letter;


@end
