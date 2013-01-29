//
//  lex_prefix.h
//  hbaLexico
//
//  Created by Dário on 28/01/13.
//  Copyright (c) 2013 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lex_prefix : NSObject {
    
    int lex_prefix_id;
    NSString *lex_prefix_letter_trans;
    NSString *lex_prefix_letter;
}


@property int lex_prefix_id;
@property (nonatomic, retain) NSString *lex_prefix_letter_trans;
@property (nonatomic, retain) NSString *lex_prefix_letter;

@end
