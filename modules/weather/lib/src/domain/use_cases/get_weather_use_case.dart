import 'package:injectable/injectable.dart';
import 'package:weather/src/data/dtos/location_response.dart';
import 'package:weather/src/domain/behaviors/get_weather_behavior.dart';
import 'package:core/core.dart';
import 'package:weather/src/domain/models/weather.dart';

@injectable
class GetWeatherUseCase {
  final GetWeatherBehavior _behavior;
  GetWeatherUseCase(this._behavior);
  Future<Result<WeatherForecast>> getWeather({
    required GeoCode geoCode,
  }) async {
    final result = await _behavior.getWeather(geoCode: geoCode);
    final response = result.value;
    if (response != null) {
      
      return SuccessResult(WeatherForecast.fromDto(response));
    }
    return ErrorResult(result.failureOrDefault);
  }
}
