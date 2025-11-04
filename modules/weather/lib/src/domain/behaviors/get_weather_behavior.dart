import 'package:core/core.dart';
import 'package:weather/src/data/dtos/location_response.dart';
import 'package:weather/src/data/dtos/weather_response.dart';

abstract interface class GetWeatherBehavior {
  Future<Result<WeatherResponse>> getWeather({required GeoCode geoCode});
}
