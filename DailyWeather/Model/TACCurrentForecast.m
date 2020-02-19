//
//  TACCurrentForecast.m
//  DailyWeather
//
//  Created by Lambda_School_Loaner_218 on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "TACCurrentForecast.h"

@implementation TACCurrentForecast

- (instancetype) initWithTime:(NSDate *)time
                      summary:(NSString *)summary
                         icon:(NSString *)icon
             percipProability:(double)percipProability
              percipIntensity:(double)percipIntensity
                  tempreature:(double)tempreature
         apparentTemperature:(double)apparentTemperature
                     humidity:(double)humidity
                     pressure:(double)pressure
                    windSpeed:(double)windSpeed
                  windBearing:(double)windBearing
                      uvIndex:(int)uvIndex {
    self = [super init];
    if (self) {
        _time = time;
        _summary = [summary copy];
        _icon = [icon copy];
        _percipProbability = percipProability;
        _percipIntensity = percipIntensity;
        _temperature = tempreature;
        _apparentTemperature = apparentTemperature;
        _humidity = humidity;
        _pressure = pressure;
        _windSpeed = windSpeed;
        _windBearing = windBearing;
        _uvIndex = uvIndex;
    }
    return self;
}

-(instancetype)initWithDictionary:(NSDictionary *)dictionary {
    NSNumber *timeNumber = dictionary[@"time"];
    NSDate *time = [NSDate dateWithTimeIntervalSince1970:timeNumber.longLongValue / 1000.0];
    NSString *summary = dictionary[@"summary"];
    NSString *icon = dictionary[@"icon"];
    NSNumber *precipProbability = dictionary[@"precipProbability"];
    NSNumber *precipIntensity = dictionary[@"precipIntensity"];
    NSNumber *temprature = dictionary[@"temperature"];
    NSNumber *apparentTempreature = dictionary[@"apparentTemperature"];
    NSNumber *humidity = dictionary[@"humidity"];
    NSNumber *pressure = dictionary[@"pressure"];
    NSNumber *windSpeed = dictionary[@"windSpeed"];
    NSNumber *windBearing = dictionary[@"windBearing"];
    NSNumber *uvIndex = dictionary[@"uvIndex"];
    
    self = [self initWithTime:time
                      summary:summary
                         icon:icon
             percipProability:precipProbability.doubleValue
              percipIntensity:precipIntensity.doubleValue
                  tempreature:temprature.doubleValue
         apparentTemperature:apparentTempreature.doubleValue
                     humidity:humidity.doubleValue
                     pressure:pressure.doubleValue
                    windSpeed:windSpeed.doubleValue
                  windBearing:windBearing.intValue
                      uvIndex:uvIndex.intValue];
    return self;
}


@end
