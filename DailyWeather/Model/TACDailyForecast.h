//
//  TACDailyForecast.h
//  DailyWeather
//
//  Created by Lambda_School_Loaner_218 on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "TACWeatherForecast.h"

NS_ASSUME_NONNULL_BEGIN

@interface TACDailyForecast : TACWeatherForecast

@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly) NSString *summary;
@property (nonatomic, readonly) NSString *icon;
@property (nonatomic, readonly) NSDate *sunriseTime;
@property (nonatomic, readonly) NSDate *sunsetTime;
@property (nonatomic, readonly) double percipProbability;
@property (nonatomic, readonly) double percipIntensity;
@property (nonatomic, readonly) NSString *percipType;
@property (nonatomic, readonly) double tempratureLow;
@property (nonatomic, readonly) double apparentTemperature;
@property (nonatomic, readonly) double tempratureHigh;
@property (nonatomic, readonly) double apparenttemperature;
@property (nonatomic, readonly) double humidity;
@property (nonatomic, readonly) double pressure;
@property (nonatomic, readonly) double windSpeed;
@property (nonatomic, readonly) int windBeaering;
@property (nonatomic, readonly) int uvIndex;



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
                      uvIndex:(int)uvIndex;



-(instancetype) initWithDictonary:(NSDictionary *)dictionary;
    

@end

NS_ASSUME_NONNULL_END
