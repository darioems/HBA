//
//  Chapter.h
//  hbaLexico
//
//  Created by Dário on 12/09/12.
//  Copyright (c) 2012 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chapter : NSObject {
    
@private
    int idChapter;
    int bNumber;
    NSString *cNumber;
    NSString *obs;
}

@property int idChapter;
@property int bNumber;
@property (nonatomic, retain) NSString * cNumber;
@property (nonatomic, retain) NSString * obs;

@end
