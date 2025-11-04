import 'package:weather/src/data/dtos/weather_response.dart';

class WeatherForecast {
  final List<Weather> weather;
  final MainWeather main;

  WeatherForecast({
    required this.weather,
    required this.main,
  });

  /// Creates a [Weather] from a [WeatherResponse] DTO.
  factory WeatherForecast.fromDto(WeatherResponse response) {
    return WeatherForecast(
      weather: response.weather,
      main: response.main,
    );
  }
}
