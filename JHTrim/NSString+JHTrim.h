//
//  NSString+JHTrim.h
//  HaoCold
//
//  Created by HaoCold on 2019/7/17.
//  Copyright © 2019 HaoCold. All rights reserved.
//  去除多余的空格和换行

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (JHTrim)

/**
 trim redundant whitespace and newline.
 keep count:
 - whitespace: 10
 - newline: 2
 去掉多余的空格和换行，空格保留10个，换行保留2个
 
 @return a new string.
 */
- (NSString *)jh_trimWhitespaceAndNewline;

- (NSString *)jh_trimWhitespaceKeepCount:(NSInteger)count1 andNewlineKeepCount:(NSInteger)count2;

@end

NS_ASSUME_NONNULL_END
