import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/src/data/dtos/location_response.dart';
import 'package:weather/src/data/dtos/weather_response.dart';
import 'package:weather/src/data/sources/weather_api.dart';
import 'package:weather/src/domain/behaviors/get_weather_behavior.dart';

@singleton
class WeatherService implements GetWeatherBehavior {
  final WeatherApi _api;
  WeatherService(this._api);

  @override
  Future<Result<WeatherResponse>> getWeather({required GeoCode geoCode}) async {
    try {
      final response = await _api.getCurrentWeather(
        lat: geoCode.latitude ?? 0,
        lon: geoCode.longitude ?? 0,
        apiKey: dotenv.env['WEATHER_API_KEY'] ?? '',
      );
      return SuccessResult(response);
    } catch (e) {
      // TODO: adapt failure types according to error codes
      return ErrorResult(Failure(e.toString()));
    }
  }
}
