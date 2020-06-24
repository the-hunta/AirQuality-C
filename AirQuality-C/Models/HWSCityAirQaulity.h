//
//  HWSCityAirQaulity.h
//  AirQuality-C
//
//  Created by Hunter Smith on 6/24/20.
//  Copyright © 2020 Hunter Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HWSWeather;
@class HWSPollution;

NS_ASSUME_NONNULL_BEGIN

@interface HWSCityAirQaulity : NSObject

@property (nonatomic, copy, readonly) NSString * city;
@property (nonatomic, copy, readonly) NSString * state;
@property (nonatomic, copy, readonly) NSString * country;
@property (nonatomic, copy, readonly) HWSWeather * weather;
@property (nonatomic, copy, readonly) HWSPollution * pollution;

- (instancetype)initWithCity:(NSString *)city
                       state:(NSString *)state
                     country:(NSString *)country
                     weather:(HWSWeather *)weather
                   pollution:(HWSPollution *)pollution;

@end

@interface  HWSCityAirQaulity (JSONConvertable)

-(instancetype)initWithDictionary: (NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
