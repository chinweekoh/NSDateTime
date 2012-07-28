//
//  NSDateClass.m
//  NSDate
//
//  Created by chinweekoh on 7/26/12.
//

#import "NSDateClass.h"

@implementation NSDateClass

/* to get current system time base on GMT value */
- (NSString*) getCurrentSystemTime:(int) GMT {
    
    NSDate *myDate = [NSDate date];
    NSDateFormatter *dateFormatterShortStyle = [[NSDateFormatter alloc] init];
    [dateFormatterShortStyle setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:(GMT*3600)]];
    
    /* NSDateFormatterShortStyle: MM/DD/YY HH:MM */
    [dateFormatterShortStyle setDateStyle:NSDateFormatterShortStyle];
    [dateFormatterShortStyle setTimeStyle:NSDateFormatterShortStyle];
    
    NSString *GMTDateString = [dateFormatterShortStyle stringFromDate: myDate];
    return GMTDateString;
}

@end
