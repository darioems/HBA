//
//  lex_sufix_n_var.h
//  hbaLexico
//
//  Created by Dário on 28/01/13.
//  Copyright (c) 2013 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lex_sufix_n_var : NSObject {
    int lex_sufix_n_var_id;
    int lex_sufix_n_var_count;
    NSString *lex_sufix_n_var_sufix_id;
    NSString *lex_sufix_n_var_trans;
    NSString *lex_sufix_n_var_morpho;
    NSString *lex_sufix_n_var_vowel;
}

@property int lex_sufix_n_var_id;
@property int lex_sufix_n_var_count;
@property (nonatomic, retain) NSString *lex_sufix_n_var_sufix_id;
@property (nonatomic, retain) NSString *lex_sufix_n_var_trans;
@property (nonatomic, retain) NSString *lex_sufix_n_var_morpho;
@property (nonatomic, retain) NSString *lex_sufix_n_var_vowel;

@end
