import 'dart:async';

import 'package:core/core.dart';
import 'package:core/src/domain/models/result.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/src/data/dtos/location_response.dart';
import 'package:weather/src/data/sources/amadeus_api.dart';
import 'package:weather/src/domain/behaviors/get_cities_behavior.dart';

@singleton
class AmadeusService implements GetCitiesBehavior {
  AmadeusService(this._api);
  final AmadeusApi _api;
  @override
  Future<Result<LocationResponse>> getCities({
    required String searchQuery,
  }) async {
    try {
      final response = await _api.getCities(searchQuery: searchQuery, max: 8);
      return SuccessResult(response);
    } catch (e) {
      // TODO: adapt failure types according to error codes
      return ErrorResult(Failure(e.toString()));
    }
  }
}
