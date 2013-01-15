//
//  Vers.h
//  hbaLexico
//
//  Created by Dário on 12/09/12.
//  Copyright (c) 2012 Dário & Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vers : NSObject {

@private
    int idVers;
    int idChapter;
    NSString * vNumber;
    NSString * vers;
}

@property int idVers;
@property int idChapter;
@property (nonatomic, retain) NSString * vNumber;
@property (nonatomic, retain) NSString * vers;

@end
