//
//  NSObject+GKLDProperty.m
//  GKLD
//
//  Created by Mac on 2017/12/21.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "NSObject+WCJProperty.h"

@implementation NSObject (WCJProperty)


+ (void)wcj_createPropertyCodeWithDict:(NSDictionary*)dict{
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull propertyName, id  _Nonnull value, BOOL * _Nonnull stop) {
        NSMutableString *strM = [NSMutableString new];
        NSString *code;
//        NSLog(@"%@, %@",propertyName,[value class]);
        if ([value isKindOfClass:NSClassFromString(@"__NSCFString")]||[value isKindOfClass:NSClassFromString(@"NSTaggedPointerString")]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSString * %@;",propertyName];
        }else if ([value isKindOfClass:NSClassFromString(@"__NSCFNumber")]){
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) NSInteger %@;",propertyName];
        }else if ([value isKindOfClass:NSClassFromString(@"__NSArrayI")]){
             code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSArray * %@;",propertyName];
        }else if ([value isKindOfClass:NSClassFromString(@"__NSDictionaryI")]){
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSDictionary * %@;",propertyName];
        }
        if (code != nil) {
            [strM appendString:code];
        }
        NSLog(@"%@",strM);
    }];

}

@end
