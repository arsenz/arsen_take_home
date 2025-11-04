import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:weather/src/domain/use_cases/get_cities_use_case.dart';
import 'package:weather/src/domain/use_cases/get_weather_use_case.dart';
import 'package:weather/src/presentation/blocs/weather_search_event.dart';
import 'package:weather/src/presentation/blocs/weather_search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@injectable
class WeatherSearchBloc extends Bloc<WeatherSearchEvent, WeatherSearchState> {
  final GetCitiesUseCase _getCitiesUseCase;
  final GetWeatherUseCase _getWeatherUseCase;

  WeatherSearchBloc(this._getCitiesUseCase, this._getWeatherUseCase)
    : super(
        WeatherSearchState(
          weatherStatus: WeatherStatus.idle(),
          citiesStatus: CitiesStatus.idle(),
        ),
      ) {
    _setupHandlers();
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events
        .debounce(duration)
        .switchMap(mapper); // ensures only the latest event is processed
  }

  void _setupHandlers() {
    // using a custom event transformer, we can put a debouncer right between event and handler
    on<WeatherSearchLocationTyped>(
      _searchCities,
      transformer: debounce(Duration(seconds: 1)),
    );
    on<WeatherSearchLocationTapped>(_checkWeather);
  }

  FutureOr<void> _searchCities(
    WeatherSearchLocationTyped event,
    Emitter<WeatherSearchState> emit,
  ) async {
    print('myprint 2');
    emit(state.copyWith(citiesStatus: CitiesStatus.loading()));
    final result = await _getCitiesUseCase.getCities(searchQuery: event.query);
    final value = result.value;
    print('myprint 3: $value');
    if (value != null) {
      emit(
        state.copyWith(citiesStatus: CitiesStatus.success(locations: value)),
      );
      return;
    }
    emit(state.copyWith(citiesStatus: CitiesStatus.failure('Please retry')));
  }

  FutureOr<void> _checkWeather(
    WeatherSearchLocationTapped event,
    Emitter<WeatherSearchState> emit,
  ) async {
    // reset locations
    emit(state.copyWith(citiesStatus: CitiesStatus.idle()));
    emit(state.copyWith(weatherStatus: WeatherStatus.loading()));
    final geoCode = event.location.geoCode;
    if (geoCode == null) {
      emit(
        state.copyWith(
          weatherStatus: WeatherStatus.failure(
            'No coordinates for the location',
          ),
        ),
      );
      return;
    }
    final result = await _getWeatherUseCase.getWeather(geoCode: geoCode);
    final value = result.value;
    if (value != null) {
      emit(
        state.copyWith(weatherStatus: WeatherStatus.success(forecast: value)),
      );
      return;
    }
    emit(
      state.copyWith(
        weatherStatus: WeatherStatus.failure(
          result.failureOrDefault.message ?? 'UnknownError',
        ),
      ),
    );
  }
}
