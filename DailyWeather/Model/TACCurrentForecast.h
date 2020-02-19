//
//  TACCurrentForecast.h
//  DailyWeather
//
//  Created by Lambda_School_Loaner_218 on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "TACWeatherForecast.h"

NS_ASSUME_NONNULL_BEGIN

@interface TACCurrentForecast : TACWeatherForecast

@property (nonatomic,readonly)NSDate *time;
@property (nonatomic,readonly,copy)NSString *summary;
@property (nonatomic,readonly,copy)NSString *icon;
@property (nonatomic,readonly)double percipProbability;
@property (nonatomic,readonly)double percipIntensity;
@property (nonatomic,readonly)double temperature;
@property (nonatomic,readonly)double apparentTemperature;
@property (nonatomic,readonly)double humidity;
@property (nonatomic,readonly)double pressure;
@property (nonatomic,readonly)double windSpeed;
@property (nonatomic,readonly)int windBearing;
@property (nonatomic,readonly)int uvIndex;

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
uvIndex:(int)uvIndex;

- (instancetype) initWithDictionary: (NSDictionary *)dictionary;






@end

NS_ASSUME_NONNULL_END
