//
//  HBATableViewController.h
//  hbaLexico
//
//  Created by Dário on 10/09/12.
//  Copyright (c) 2012 Dário & Jean. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BookDAO.h"
#import "ChapterDAO.h"
#import "VersDAO.h"

@interface HBATableViewController : UITableViewController {
@private
    BookDAO *DAOB;
    ChapterDAO *DAOC;
    VersDAO *DAOV;
    
    
}
@property (nonatomic, retain) BookDAO *DAOB;
@property (nonatomic, retain) ChapterDAO *DAOC;
@property (nonatomic, retain) VersDAO *DAOV;



@end
