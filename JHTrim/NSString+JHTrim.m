//
//  NSString+JHTrim.m
//  HaoCold
//
//  Created by HaoCold on 2019/7/17.
//  Copyright © 2019 HaoCold. All rights reserved.
//

#import "NSString+JHTrim.h"

@implementation NSString (JHTrim)

- (NSString *)jh_trimWhitespaceAndNewline
{
    return [self jh_trimWhitespaceKeepCount:10 andNewlineKeepCount:2];
}

- (NSString *)jh_trimWhitespaceKeepCount:(NSInteger)count1 andNewlineKeepCount:(NSInteger)count2
{
    NSString *string = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    string = [string stringByReplacingOccurrencesOfString:@"\r" withString:@"\n"];
    string = [string jh_trimRedundantCharacters:@" " limit:count1];
    string = [string jh_trimRedundantCharacters:@"\n" limit:count2];
    return string;
}

- (NSString *)jh_trimRedundantCharacters:(NSString *)string limit:(NSInteger)limit
{
    NSMutableArray *array = [self componentsSeparatedByString:string].mutableCopy;
    NSMutableIndexSet *removeSet = [NSMutableIndexSet indexSet];
    int count = 0;
    for (NSInteger i = 0; i < array.count; i++) {
        NSString *string = array[i];
        if (string.length == 0) {
            if (count < limit - 1) {
                count++;
            }else{
                [removeSet addIndex:i];
            }
        }else{
            count = 0;
        }
    }
    
    [array removeObjectsAtIndexes:removeSet];
    NSString *outString = [array componentsJoinedByString:string];
    return outString;
}

@end
