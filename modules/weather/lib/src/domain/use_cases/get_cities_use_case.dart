import 'package:injectable/injectable.dart';
import 'package:weather/src/domain/behaviors/get_cities_behavior.dart';
import 'package:weather/src/domain/models/location.dart';
import 'package:core/core.dart';

@injectable
class GetCitiesUseCase {
  final GetCitiesBehavior _behavior;
  GetCitiesUseCase(this._behavior);
  Future<Result<List<Location>>> getCities({
    required String searchQuery,
  }) async {
    // Amadeus has restriction for searchQueries to be in the range [3,50]
    if (searchQuery.length < 3 || searchQuery.length > 50) {
      return ErrorResult(Failure('search query out of range'));
    }
    final result = await _behavior.getCities(searchQuery: searchQuery);
    final response = result.value;
    if (response != null) {
      // remove duplicates
      final seenLocations = <String>[];
      final uniqueLocations = <Location>[];
      for (final location in response.data) {
        if (seenLocations.contains(location.name)) {
          continue;
        }
        seenLocations.add(location.name);
        uniqueLocations.add(Location.fromDto(location));
      }
      return SuccessResult(uniqueLocations);
    }
    return ErrorResult(result.failureOrDefault);
  }
}
