//
//  DailyWeatherTests.m
//  DailyWeatherTests
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../DailyWeather/LambdaSDK/LSIFileHelper.h"
#import "../DailyWeather/Model/TACCurrentForecast.h"


@interface DailyWeatherTests : XCTestCase

@end

@implementation DailyWeatherTests

- (void)testCurrentWeather {

    // TODO: Use LSIFileHelper to load JSON from your test bundle
    NSData *weatherData = loadFile(@"CurrentWeather.json", [DailyWeatherTests class]);
    NSError *jsonError = nil;
    NSDictionary *weatherDictionary = [NSJSONSerialization JSONObjectWithData:weatherData options:0 error:&jsonError];
    
    if (jsonError) {
        NSLog(@"JSON Parsing Error %@", jsonError);
    }
    
    NSDate *time = [NSDate dateWithTimeIntervalSince1970:1581003354 / 1000.0];
    TACCurrentForecast *forecast = [[TACCurrentForecast alloc] initWithDictionary:weatherDictionary];
    
    XCTAssertEqualObjects(time, forecast.time);
    XCTAssertEqualObjects(@"Clear", forecast.summary);
    XCTAssertEqualObjects(@"clear-day", forecast.icon);
    XCTAssertEqualWithAccuracy(0, forecast.percipProbability, 0.001);
    XCTAssertEqualWithAccuracy(0, forecast.percipIntensity, 0.001);
    XCTAssertEqualWithAccuracy(48.35, forecast.temperature, 0.001);
    XCTAssertEqualWithAccuracy(47.4, forecast.apparentTemperature, 0.001);
    XCTAssertEqualWithAccuracy(0.77, forecast.humidity, 0.001);
    XCTAssertEqualWithAccuracy(1023.2, forecast.pressure, 0.001);
    XCTAssertEqualWithAccuracy(3.45, forecast.windSpeed, 0.001);
    XCTAssertEqual(24, forecast.windBearing);
    XCTAssertEqual(0, forecast.uvIndex);
    
    // TODO: Create Unit Tests for each separate JSON file

}

@end
