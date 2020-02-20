//
//  TACHourlyForcast.m
//  DailyWeather
//
//  Created by Lambda_School_Loaner_218 on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "TACHourlyForcast.h"

@implementation TACHourlyForcast

-(instancetype) initWithTime:(NSDate *)time
                     summary:(NSString *)summary
                        icon:(NSString *)icon
           precipProbability:(double)precipProbability
             precipIntensity:(double)precipIntensity
                  precipType:(NSString *)precipType
                 temperature:(double)temperature
         apparentTemperature:(double)apparentTemperature
                    humidity:(double)humidity
                    pressure:(double)pressure
                   windSpeed:(double)windSpeed
                 windBearing:(int)windBearing
                     uvIndex:(int)uvIndex {
    
    self = [self init];
    if (self) {
        _time = time;
        _summary = [summary copy];
        _icon = [icon copy];
        _percipProbability = precipProbability;
        _percipIntensity = precipIntensity;
        _percipType = [precipType copy];
        _apparentTemperature = apparentTemperature;
        _humidity = humidity;
        _pressure = pressure;
        _windSpeed = windSpeed;
        _windBeaering = windBearing;
        _uvIndex = uvIndex;
    }
    return self;
}

- (instancetype) initWithDictionary:(NSDictionary *)dictionary {
    NSNumber *timeNumber = dictionary[@"time"];
    NSDate *time = [NSDate dateWithTimeIntervalSince1970:timeNumber.longValue / 1000.0];
    NSString *summary = dictionary[@"summary"];
    NSString *icon = dictionary[@"icon"];
    NSNumber *precipProbability = dictionary[@"precipProbability"];
    NSNumber *precipIntensity = dictionary[@"precipIntensity"];
    NSString *precipType = dictionary[@"precipType"];
    NSNumber *temperature = dictionary[@"temperature"];
    NSNumber *apparentTemperature = dictionary[@"apparentTemperature"];
    NSNumber *humidity = dictionary[@"humidity"];
    NSNumber *pressure = dictionary[@"pressure"];
    NSNumber *windSpeed = dictionary[@"windSpeed"];
    NSNumber *windBearing = dictionary[@"windBearing"];
    NSNumber *uvIndex = dictionary[@"uvIndex"];
    
    if ([precipType isKindOfClass:[NSNull class]]) {
        precipType = nil;
    }
    
    if ([precipIntensity isKindOfClass:[NSNull class]]) {
        precipIntensity = 0;
    }
    
    self = [self initWithTime:time
                      summary:summary
                         icon:icon
            precipProbability:precipProbability.doubleValue
              precipIntensity:precipIntensity.doubleValue
                   precipType:precipType
                  temperature:temperature.doubleValue
          apparentTemperature:apparentTemperature.doubleValue
                     humidity:humidity.doubleValue
                     pressure:pressure.doubleValue
                    windSpeed:windSpeed.doubleValue
                  windBearing:windBearing.intValue
                      uvIndex:uvIndex.intValue];
    return self;
}


@end
