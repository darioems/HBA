//
//  wlc_book.h
//  hbaLexico
//
//  Created by Dário on 28/01/13.
//  Copyright (c) 2013 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface wlc_book : NSObject {

int wlc_book_id;
NSString *wlc_book_name;
NSString *wlc_book_sort_name;
}


@property int wlc_book_id;
@property (nonatomic, retain) NSString *wlc_book_name;
@property (nonatomic, retain) NSString *wlc_book_sort_name;

@end
