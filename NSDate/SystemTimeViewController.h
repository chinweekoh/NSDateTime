//
//  SystemTimeViewController.h
//  NSDate
//
//  Created by chinweekoh on 7/26/12.
//

#import <UIKit/UIKit.h>

@class NSDateClass;

@interface SystemTimeViewController : UIViewController <UITableViewDataSource> {
    NSDateClass* nsDate;
}

@property (weak, nonatomic) IBOutlet UITableView *tableview;


//- (void) configureTableCell:(UITableViewCell*)cell tableRow:(NSInteger*) row;

@end
