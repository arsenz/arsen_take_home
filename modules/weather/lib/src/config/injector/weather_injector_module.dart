import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/src/data/services/amadeus_service.dart';
import 'package:weather/src/data/services/weather_service.dart';
import 'package:weather/src/data/sources/amadeus_api.dart';
import 'package:weather/src/data/sources/weather_api.dart';
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


  @factoryMethod
  AmadeusApi amadeusApi(
    @Named('protected-dio') Dio dio,
  ) =>
      AmadeusApi(
        dio,
      );

      @factoryMethod
  WeatherApi weatherApi(
    @Named('protected-dio') Dio dio,
  ) =>
      WeatherApi(
        dio,
      );
  }
