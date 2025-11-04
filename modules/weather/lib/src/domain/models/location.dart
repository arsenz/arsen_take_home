import 'package:weather/src/data/dtos/location_response.dart';

class Location {
  final String name;
  final GeoCode? geoCode;

  Location({
    required this.name,
    required this.geoCode,
  });

  /// Creates a [City] from the first item in a [LocationResponse] DTO.
  /// Assumes there's at least one item in the response data list.
  factory Location.fromDto(LocationData data) {
    return Location(
      name: data.name,
      geoCode: data.geoCode,
    );
  }
}
