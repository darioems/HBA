//
//  lex_word.h
//  hbaLexico
//
//  Created by Dário on 28/01/13.
//  Copyright (c) 2013 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lex_word : NSObject {
    
    int lex_word_id;
    NSString *lex_word_number;
    NSString *lex_word_vowel;
    NSString *lex_word_without_vowel;
}


@property int lex_word_id;
@property (nonatomic, retain) NSString *lex_word_number;
@property (nonatomic, retain) NSString *lex_word_vowel;
@property (nonatomic, retain) NSString *lex_word_without_vowel;



@end
