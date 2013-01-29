//
//  wlc_chapter.h
//  hbaLexico
//
//  Created by Dário on 28/01/13.
//  Copyright (c) 2013 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface wlc_chapter : NSObject  {
    
    int wlc_chapter_id;
    int wlc_chapter_book_id;
    NSString *wlc_chapter_number;
    NSString *wlc_chapter_descr;
}


@property int wlc_chapter_id;
@property int wlc_chapter_book_id;
@property (nonatomic, retain) NSString *wlc_chapter_number;
@property (nonatomic, retain) NSString *wlc_chapter_descr;

@end
