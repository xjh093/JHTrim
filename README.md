# JHTrim
- trim redundant whitespace and newline. 
   - 去掉多余的空格和换行，空格保留10个，换行保留2个

---

# Method

```
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
```
