//
//  lex_word_reference_wlc.h
//  hbaLexico
//
//  Created by Dário on 28/01/13.
//  Copyright (c) 2013 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lex_word_reference_wlc : NSObject {
    
    int lex_word_reference_wlc_id;
    int lex_word_reference_wlc_lex_word_id;
    int lex_word_reference_wlc_lex_word_id_import;
    NSString *lex_word_reference_wlc_prefix;
    NSString *lex_word_reference_wlc_sufix;
    NSString *lex_word_reference_wlc_ref;
    
}

@property int lex_word_reference_wlc_id;
@property int lex_word_reference_wlc_lex_word_id;
@property int lex_word_reference_wlc_lex_word_id_import;
@property (nonatomic, retain) NSString *lex_word_reference_wlc_prefix;
@property (nonatomic, retain) NSString *lex_word_reference_wlc_sufix;
@property (nonatomic, retain) NSString *lex_word_reference_wlc_ref;

@end
