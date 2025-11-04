//@GeneratedMicroModule;WeatherPackageModule;package:weather/src/config/injector/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:weather/src/config/injector/weather_injector_module.dart'
    as _i191;
import 'package:weather/src/data/services/amadeus_service.dart' as _i528;
import 'package:weather/src/data/services/weather_service.dart' as _i574;
import 'package:weather/src/domain/behaviors/get_cities_behavior.dart' as _i959;
import 'package:weather/src/domain/behaviors/get_weather_behavior.dart'
    as _i766;
import 'package:weather/src/domain/use_cases/get_cities_use_case.dart' as _i499;
import 'package:weather/src/domain/use_cases/get_weather_use_case.dart'
    as _i951;
import 'package:weather/src/presentation/blocs/weather_search_bloc.dart'
    as _i218;

class WeatherPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final weatherInjectorModule = _$WeatherInjectorModule();
    gh.singleton<_i528.AmadeusService>(() => _i528.AmadeusService());
    gh.singleton<_i574.WeatherService>(() => _i574.WeatherService());
    gh.factory<_i766.GetWeatherBehavior>(() =>
        weatherInjectorModule.getWeatherBehavior(gh<_i574.WeatherService>()));
    gh.factory<_i959.GetCitiesBehavior>(() =>
        weatherInjectorModule.getCitiesBehavior(gh<_i528.AmadeusService>()));
    gh.factory<_i499.GetCitiesUseCase>(
        () => _i499.GetCitiesUseCase(gh<_i959.GetCitiesBehavior>()));
    gh.factory<_i951.GetWeatherUseCase>(
        () => _i951.GetWeatherUseCase(gh<_i766.GetWeatherBehavior>()));
    gh.factory<_i218.WeatherSearchBloc>(() => _i218.WeatherSearchBloc(
          gh<_i499.GetCitiesUseCase>(),
          gh<_i951.GetWeatherUseCase>(),
        ));
  }
}

class _$WeatherInjectorModule extends _i191.WeatherInjectorModule {}
