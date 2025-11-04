import 'package:core/core.dart';
import 'package:weather/src/data/dtos/location_response.dart';

abstract interface class GetCitiesBehavior {
  Future<Result<LocationResponse>> getCities({required String searchQuery});
}
