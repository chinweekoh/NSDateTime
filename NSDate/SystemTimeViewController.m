//
//  SystemTimeViewController.m
//  NSDate
//
//  Created by chinweekoh on 7/26/12.
//

#import "SystemTimeViewController.h"
#import "NSDateClass.h"

#define NUMOF_TABLESECTION  1
#define NUMOF_TABLEROW      5

#define SINGAPORE   @"Singapore, Singapore" //GMT +0800
#define MELBOURNE   @"Melbourne, Australia" //GMT +1000
#define VANCOUVER   @"Vancouver, Canada"    //GMT -0700
#define LONDON      @"London, England"      //GMT +0100
#define LOSANGELES  @"Los Angeles, U.S.A"   //GMT -0700

@interface SystemTimeViewController ()
- (void) configureTableCell:(UITableViewCell*) cell tableviewRow:(NSInteger) row;
@end

@implementation SystemTimeViewController
@synthesize tableview;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil {
	self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
	if (self) {
         nsDate = [[NSDateClass alloc] init];
	}
	return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setTableview:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void) configureTableCell:(UITableViewCell *)cell tableviewRow:(NSInteger)row {
    switch (row) {
        case 0:
            [[cell textLabel] setText:SINGAPORE];
            [[cell detailTextLabel] setText:[nsDate getCurrentSystemTime:8]];
            break;
        case 1:
            [[cell textLabel] setText:MELBOURNE];
            [[cell detailTextLabel] setText:[nsDate getCurrentSystemTime:10]];
            break;
        case 2:
            [[cell textLabel] setText:VANCOUVER];
            [[cell detailTextLabel] setText:[nsDate getCurrentSystemTime:-7]];
            break;
        case 3:
            [[cell textLabel] setText:LONDON];
            [[cell detailTextLabel] setText:[nsDate getCurrentSystemTime:1]];
            break;
        case 4:
            [[cell textLabel] setText:LOSANGELES];
            [[cell detailTextLabel] setText:[nsDate getCurrentSystemTime:-7]];
            break;
            
        default:
            break;
    }
}


/* UITableViewDataSource Protocol Reference */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return NUMOF_TABLESECTION;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return NUMOF_TABLEROW;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *theIdentifier = @"theIdentifier";
	
	// Try to recover a cell from the table view with the given identifier, this is for performance
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:theIdentifier];
	
	// If no cell is available, create a new one using the given identifier
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:theIdentifier];
	}
    
	[self configureTableCell:cell tableviewRow:[indexPath row]];
    
	return cell;
}

@end
