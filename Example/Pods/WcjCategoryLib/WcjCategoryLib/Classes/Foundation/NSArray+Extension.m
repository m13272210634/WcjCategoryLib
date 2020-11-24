//
//  NSArray+Extension.m
//  TLJRApp
//
//  Created by yons on 15/7/2.
//  Copyright (c) 2015年 yons. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)


/**
 *  NSArray 结构打印
 *
 *  @param locale locale
 *
 *  @return 结构化后字符串
 */
- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *str = [NSMutableString stringWithFormat:@"%lu (\n", (unsigned long)self.count];
    for (id obj in self)
    {
        [str appendFormat:@"\t%@, \n", obj];
    }
    [str appendString:@")"];
    return str;
}

/**
 *  NSArray 结构打印
 *
 *  @param locale locale
 *  @param level  level
 *
 *  @return 结构化后字符串
 */
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    NSMutableString *desc = [NSMutableString string];
    
    NSMutableString *tabString = [[NSMutableString alloc] initWithCapacity:level];
    for (NSUInteger i = 0; i < level; ++i)
    {
        [tabString appendString:@"\t"];
    }
    
    NSString *tab = @"";
    if (level > 0)
    {
        tab = tabString;
    }
    [desc appendString:@"\t(\n"];
    
    for (id obj in self)
    {
        if ([obj isKindOfClass:[NSDictionary class]]
            || [obj isKindOfClass:[NSArray class]]
            || [obj isKindOfClass:[NSSet class]]) {
            NSString *str = [((NSDictionary *)obj) descriptionWithLocale:locale indent:level + 1];
            [desc appendFormat:@"%@\t%@,\n", tab, str];
        } else if ([obj isKindOfClass:[NSString class]]) {
            [desc appendFormat:@"%@\t\"%@\",\n", tab, obj];
        } else {
            [desc appendFormat:@"%@\t%@,\n", tab, obj];
        }
    }
    
    [desc appendFormat:@"%@)", tab];
    
    return desc;
}



@end
