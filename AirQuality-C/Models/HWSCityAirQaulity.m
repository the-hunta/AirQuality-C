//
//  HWSCityAirQaulity.m
//  AirQuality-C
//
//  Created by Hunter Smith on 6/24/20.
//  Copyright © 2020 Hunter Smith. All rights reserved.
//

#import "HWSCityAirQaulity.h"
#import "HWSWeather.h"
#import "HWSPollution.h"

@implementation HWSCityAirQaulity

-(instancetype)initWithCity:(NSString *)city state:(NSString *)state country:(NSString *)country weather:(HWSWeather *)weather pollution:(HWSPollution *)pollution
{
    self = [super init];
    
    if (self) {
        _city = city;
               _state = state;
               _country = country;
               _weather = weather;
               _pollution = pollution;
    
    }
    return self;
}




@end



@implementation HWSCityAirQaulity (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
 
    NSString *city = dictionary[@"city"];
    NSString *state = dictionary[@"state"];
    NSString *country = dictionary[@"country"];
    NSDictionary *currentInfo = dictionary[@"current"];
    
    HWSWeather *weather = [[HWSWeather alloc] initWithDictionary:currentInfo[@"weather"]];
    HWSPollution *pollution = [[HWSPollution alloc]initWithDictionary:currentInfo[@"pollution"]];
    
    return [self initWithCity:city state:state country:country weather:weather pollution:pollution];
}

@end

