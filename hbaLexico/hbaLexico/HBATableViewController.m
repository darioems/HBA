//
//  HBATableViewController.m
//  hbaLexico
//
//  Created by Dário on 10/09/12.
//  Copyright (c) 2012 Dário & Jean. All rights reserved.
//

#import "HBATableViewController.h"

#import "Book.h"

@interface HBATableViewController ()

@end

@implementation HBATableViewController

@synthesize DAOB;
@synthesize DAOC;
@synthesize DAOV;

NSMutableArray *books;
NSMutableArray *chapters;
NSMutableArray *verss;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    DAOB = [[BookDAO alloc] init];
    DAOC = [[ChapterDAO alloc]init];
    DAOV = [[VersDAO alloc]init];
    
    [DAOB openDB];
    
    [DAOC openDB];
    
    [DAOV openDB];
    
    books = [[NSMutableArray alloc] init];
    
    chapters = [[NSMutableArray alloc] init];
    
    verss = [[NSMutableArray alloc]init];
    
//    NSLog(@"Acessei");
    
    books = [DAOB getAllBooks];
    
    chapters = [DAOC getAllChapters];
    
    verss = [DAOV getAllVers];
    
    
    
    for (Book *book in books ) {
        NSLog(@"Livros que eu adicionei: %@", book.bName );
    }
    
    for (Chapter *chapter in chapters) {
        NSLog (@"Capitulos que eu adicionei: %d", chapter.idChapter);
    }
    
    for (Vers *vers in verss) {
        NSLog (@"Versos que eu adicionei: %@ %@", vers.vers, vers.vNumber);
    }
    
    
//    [books release];

    
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
//    return [books count];
//    return [chapters count];
    return [verss count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
//    Book *book = (Book *) [books objectAtIndex:indexPath.row];
    
  //  Chapter *chapter = (Chapter *) [chapters objectAtIndex:indexPath.row];
    
    Vers *vers = (Vers *) [verss objectAtIndex:indexPath.row];

  //  cell.textLabel.text = book.bsName;
    
 //   cell.textLabel.text = [NSString stringWithFormat:@"%d",chapter.idChapter];
    
    //[cell.textLabel setFont:[UIFont fontWithName:@"ArialHebrew" size:16]];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", vers.vNumber, vers.vers];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#define PADDING 3.0f

- (CGFloat)tableView:(UITableView *)t heightForRowAtIndexPath:(NSIndexPath *)indexPath {
   // NSString *text = [verss objectAtIndex:indexPath.row];
    Vers *vers = (Vers *) [verss objectAtIndex:indexPath.row];
    
    NSString *text = vers.vers;
    CGSize textSize = [text sizeWithFont:[UIFont systemFontOfSize:16.0f] constrainedToSize:CGSizeMake(self.tableView.frame.size.width - PADDING * 3, 1000.0f)];
    
    return textSize.height + PADDING * 3;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
