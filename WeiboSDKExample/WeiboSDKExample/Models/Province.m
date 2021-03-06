//
//  Province.m
//  ZhiWeiboPhone
//
//  Created by junmin liu on 12-8-31.
//  Copyright (c) 2012年 idfsoft. All rights reserved.
//

#import "Province.h"

@implementation Province
@synthesize provinceId = _provinceId;
@synthesize name = _name;
@synthesize cities = _cities;


- (id)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        self.provinceId = [[dict objectForKey:@"id"]stringValue];
        self.name = [dict objectForKey:@"name"];
        self.cities = [NSMutableDictionary dictionary];
        NSArray *cityArray = [dict objectForKey:@"citys"];
        for (NSDictionary *cityDic in cityArray) {
            for (NSString *key in cityDic.allKeys) {
                [self.cities setObject:[cityDic objectForKey:key] forKey:key];
            }
        }
    }
    return self;
}


//===========================================================
// dealloc
//===========================================================
- (void)dealloc
{
    [_name release];
    [_provinceId release];
    [_cities release];
    
    [super dealloc];
}

@end
