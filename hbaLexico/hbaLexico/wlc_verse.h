//
//  wlc_verse.h
//  hbaLexico
//
//  Created by Dário on 28/01/13.
//  Copyright (c) 2013 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface wlc_verse : NSObject {
    
    int wlc_verse_id;
    int wlc_verse_chapter_id;
    int wlc_verse_number;
    NSString *wlc_verse_desc;
    NSString *wlc_verse_text;
}


@property int wlc_verse_id;
@property int wlc_verse_chapter_id;
@property int wlc_verse_number;
@property (nonatomic, retain) NSString *wlc_verse_desc;
@property (nonatomic, retain) NSString *wlc_verse_text;

@end
