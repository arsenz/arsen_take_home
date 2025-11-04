import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/src/data/services/amadeus_service.dart';
import 'package:weather/src/data/services/weather_service.dart';
import 'package:weather/src/data/sources/amadeus_api.dart';
import 'package:weather/src/domain/behaviors/get_cities_behavior.dart';
import 'package:weather/src/domain/behaviors/get_weather_behavior.dart';

@module
abstract class WeatherInjectorModule {
  @injectable
  GetCitiesBehavior getCitiesBehavior(AmadeusService amadeusService) =>
      amadeusService;

        @injectable
  GetWeatherBehavior getWeatherBehavior(WeatherService weatherService) =>
      weatherService;

  // This is how instances of api/source should ideally be maintained with a global
  // dio client
  // AmadeusApi amadeusApi(
  //   @Named('protected-dio') Dio dio,
  //   EnvironmentConfig config,
  // ) =>
  //     AmadeusApi(
  //       dio,
  //       baseUrl: config.mciUrl,
  //     );
}
