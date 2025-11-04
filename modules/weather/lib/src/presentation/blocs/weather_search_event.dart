import 'package:weather/src/domain/models/location.dart';

sealed class WeatherSearchEvent {}

final class WeatherSearchLocationTyped extends WeatherSearchEvent {
  final String query;

  WeatherSearchLocationTyped({required this.query});
}

final class WeatherSearchLocationTapped extends WeatherSearchEvent {
  final Location location;

  WeatherSearchLocationTapped({required this.location});
}
