//
//  HWSPollution.m
//  AirQuality-C
//
//  Created by Hunter Smith on 6/24/20.
//  Copyright © 2020 Hunter Smith. All rights reserved.
//

#import "HWSPollution.h"

@implementation HWSPollution

- (instancetype)initWithInt:(NSInteger)aqi
{
    self = [super init];
    if (self)
    {
        _airQualityIndex = aqi;
    }
    return self;
}

@end

@implementation HWSPollution (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSInteger aqi = [dictionary[@"aqius"] intValue];
    
    return [self initWithInt:aqi];
}

@end
