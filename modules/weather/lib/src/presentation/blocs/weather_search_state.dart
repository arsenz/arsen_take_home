import 'package:flutter/foundation.dart';
import 'package:weather/src/domain/models/location.dart';
import 'package:weather/src/domain/models/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_search_state.freezed.dart';

@freezed
sealed class WeatherSearchState with _$WeatherSearchState {
  const WeatherSearchState._();

  const factory WeatherSearchState({required WeatherStatus weatherStatus, required CitiesStatus citiesStatus}) =
      _WeatherSearchState;
}

@freezed
sealed class WeatherStatus with _$WeatherStatus {
  const factory WeatherStatus.idle() = WeatherIdle;

  const factory WeatherStatus.loading() = WeatherLoading;

  const factory WeatherStatus.success(
      {required WeatherForecast forecast}) = WeatherSuccess;

  const factory WeatherStatus.failure(String reason) =
      WeatherFailure;
}


@freezed
sealed class CitiesStatus with _$CitiesStatus {
  const factory CitiesStatus.idle() = CitiesIdle;

  const factory CitiesStatus.loading() = CitiesLoading;

  const factory CitiesStatus.success(
      {required List<Location> locations}) = CitiesSuccess;

  const factory CitiesStatus.failure(String reason) =
      CitiesFailure;
}