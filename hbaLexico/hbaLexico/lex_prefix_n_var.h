//
//  lex_prefix_n_var.h
//  hbaLexico
//
//  Created by Dário on 28/01/13.
//  Copyright (c) 2013 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lex_prefix_n_var : NSObject {
    
    int prefix_n_var_id;
    int prefix_n_var_prefix_id;
    NSString *prefix_n_var_id_trans;
    int prefix_n_var_count;
    NSString *prefix_n_var_morpho;
    NSString *prefix_n_var_vowel;
}


@property int prefix_n_var_id;
@property int prefix_n_var_prefix_id;
@property int prefix_n_var_count;
@property (nonatomic, retain) NSString *prefix_n_var_id_trans;
@property (nonatomic, retain) NSString *prefix_n_var_morpho;
@property (nonatomic, retain) NSString *prefix_n_var_vowel;

@end
