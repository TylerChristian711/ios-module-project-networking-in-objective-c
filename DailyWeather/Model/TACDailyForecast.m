//
//  TACDailyForecast.m
//  DailyWeather
//
//  Created by Lambda_School_Loaner_218 on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "TACDailyForecast.h"

@implementation TACDailyForecast

- (instancetype) initWithTime:(NSDate *)time
            summary:(NSString *)summary
               icon:(NSString *)icon
        sunriseTime:(NSDate *)sunriseTime
         sunsetTime:(NSDate *)sunsetTime
  precipProbability:(double)precipProbability
    precipIntensity:(double)precipIntensity
         precipType:(NSString *)precipType
     temperatureLow:(double)temperatureLow
    temperatureHigh:(double)temperatureHigh
apparentTemperature:(double)apparentTemperature
           humidity:(double)humidity
           pressure:(double)pressure
          windSpeed:(double)windSpeed
        windBearing:(int)windBearing
            uvIndex:(int)uvIndex; {
    self = [super init];
    if (self) {
        _time = time;
        _summary = [summary copy];
        _icon = [icon copy];
        _sunriseTime = sunriseTime;
        _sunsetTime = sunsetTime;
        _percipProbability = precipProbability;
        _percipIntensity = precipIntensity;
        _percipType = [precipType copy];
        _tempratureLow = temperatureLow;
        _tempratureHigh = temperatureHigh;
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
    NSNumber *sunriseTimeNumber = dictionary[@"sunriseTime"];
    NSDate *sunriseTime = [NSDate dateWithTimeIntervalSince1970:sunriseTimeNumber.longValue / 1000.0];
    NSNumber *sunsetTimeNumber = dictionary[@"sunsetTime"];
    NSDate *sunsetTime = [NSDate dateWithTimeIntervalSince1970:sunsetTimeNumber.longValue / 1000.0];
    NSNumber *precipProbability = dictionary[@"precipProbability"];
    NSNumber *precipIntensity = dictionary[@"precipIntensity"];
    NSString *precipType = dictionary[@"precipType"];
    NSNumber *temperatureLow = dictionary[@"temperatureLow"];
    NSNumber *temperatureHigh = dictionary[@"temperatureHigh"];
    NSNumber *apparentTemperature = dictionary[@"apparentTemperature"];
    NSNumber *humidity = dictionary[@"humidity"];
    NSNumber *pressure = dictionary[@"pressure"];
    NSNumber *windSpeed = dictionary[@"windSpeed"];
    NSNumber *windBearing = dictionary[@"windBearing"];
    NSNumber *uvIndex = dictionary[@"uvIndex"];
    
    if (!precipType) {
        return nil;
    }
    
    self = [self initWithTime:time
                      summary:summary
                         icon:icon
                  sunriseTime:sunriseTime
                   sunsetTime:sunsetTime
            precipProbability:precipProbability.doubleValue
              precipIntensity:precipIntensity.doubleValue
                   precipType:precipType
               temperatureLow:temperatureLow.doubleValue
              temperatureHigh:temperatureHigh.doubleValue
          apparentTemperature:apparentTemperature.doubleValue
                     humidity:humidity.doubleValue
                     pressure:pressure.doubleValue
                    windSpeed:windSpeed.doubleValue
                  windBearing:windBearing.intValue
                      uvIndex:uvIndex.intValue];
    return self;
}

-(instancetype) initWithDictonary:(NSDictionary *)dictionary {
    
        NSNumber *timeNumber = dictionary[@"time"];
        NSDate *time = [NSDate dateWithTimeIntervalSince1970:timeNumber.longValue / 1000.0];
        NSString *summary = dictionary[@"summary"];
        NSString *icon = dictionary[@"icon"];
        NSNumber *sunriseTimeNumber = dictionary[@"sunriseTime"];
        NSDate *sunriseTime = [NSDate dateWithTimeIntervalSince1970:sunriseTimeNumber.longValue / 1000.0];
        NSNumber *sunsetTimeNumber = dictionary[@"sunsetTime"];
        NSDate *sunsetTime = [NSDate dateWithTimeIntervalSince1970:sunsetTimeNumber.longValue / 1000.0];
        NSNumber *precipProbability = dictionary[@"precipProbability"];
        NSNumber *precipIntensity = dictionary[@"precipIntensity"];
        NSString *precipType = dictionary[@"precipType"];
        NSNumber *temperatureLow = dictionary[@"temperatureLow"];
        NSNumber *temperatureHigh = dictionary[@"temperatureHigh"];
        NSNumber *apparentTemperature = dictionary[@"apparentTemperature"];
        NSNumber *humidity = dictionary[@"humidity"];
        NSNumber *pressure = dictionary[@"pressure"];
        NSNumber *windSpeed = dictionary[@"windSpeed"];
        NSNumber *windBearing = dictionary[@"windBearing"];
        NSNumber *uvIndex = dictionary[@"uvIndex"];
        
    if ([precipType isKindOfClass:[NSNull class]]) {
        precipType = nil;
    }
        
        self = [self initWithTime:time
                          summary:summary
                             icon:icon
                      sunriseTime:sunriseTime
                       sunsetTime:sunsetTime
                precipProbability:precipProbability.doubleValue
                  precipIntensity:precipIntensity.doubleValue
                       precipType:precipType
                   temperatureLow:temperatureLow.doubleValue
                  temperatureHigh:temperatureHigh.doubleValue
              apparentTemperature:apparentTemperature.doubleValue
                         humidity:humidity.doubleValue
                         pressure:pressure.doubleValue
                        windSpeed:windSpeed.doubleValue
                      windBearing:windBearing.intValue
                          uvIndex:uvIndex.intValue];
        return self;
    }



@end
