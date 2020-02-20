//
//  TACHourlyForcast.h
//  DailyWeather
//
//  Created by Lambda_School_Loaner_218 on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "TACWeatherForecast.h"

NS_ASSUME_NONNULL_BEGIN

@interface TACHourlyForcast : TACWeatherForecast



@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly) NSString *summary;
@property (nonatomic, readonly) NSString *icon;
@property (nonatomic, readonly) double temperature;
@property (nonatomic, readonly) double percipProbability;
@property (nonatomic, readonly) double percipIntensity;
@property (nonatomic, readonly) NSString *percipType;
@property (nonatomic, readonly) double apparentTemperature;
@property (nonatomic, readonly) double humidity;
@property (nonatomic, readonly) double pressure;
@property (nonatomic, readonly) double windSpeed;
@property (nonatomic, readonly) int windBeaering;
@property (nonatomic, readonly) int uvIndex;



- (instancetype) initWithTime:(NSDate *)time
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
                      uvIndex:(int)uvIndex;



-(instancetype) initWithDictonary:(NSDictionary *)dictionary;
    




@end

NS_ASSUME_NONNULL_END
