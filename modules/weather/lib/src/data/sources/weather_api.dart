import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather/src/data/dtos/weather_response.dart';

part 'weather_api.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org')
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @GET('/data/2.5/weather')
  Future<WeatherResponse> getCurrentWeather({
    @Query('lat') required double lat,
    @Query('lon') required double lon,
    @Query('appid') required String apiKey,
    @Query('units') String units = 'metric',
    @Query('lang') String? lang,
  });
}
