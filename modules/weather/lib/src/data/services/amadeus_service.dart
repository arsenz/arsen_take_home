import 'dart:async';

import 'package:core/core.dart';
import 'package:core/src/domain/models/result.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/src/data/dtos/location_response.dart';
import 'package:weather/src/data/sources/amadeus_api.dart';
import 'package:weather/src/domain/behaviors/get_cities_behavior.dart';

@singleton
class AmadeusService implements GetCitiesBehavior {
  AmadeusService() {
    // TODO: move authorization to AuthBloc and include dio interceptor for 401
    // to refresh the token
    unawaited(authorize());
  }
  final _dio = Dio();
  AmadeusApi get api => AmadeusApi(_dio);

  // TODO: move authorization to AuthBloc and include dio interceptor for 401
  // to refresh the token
  Future<void> authorize() async {
    /// 1. Get Auth Token
    final token = await api.getAuthToken(
      "client_credentials",
      dotenv.env['AMADEUS_API_KEY'] ?? '',
      dotenv.env['AMADEUS_SECRET'] ?? '',
    );
    _dio.options.headers["Authorization"] = "Bearer ${token.accessToken}";
  }

  @override
  Future<Result<LocationResponse>> getCities({
    required String searchQuery,
  }) async {
    try {
      final response = await api.getCities(searchQuery: searchQuery, max: 8);
      return SuccessResult(response);
    } catch (e) {
      // TODO: adapt failure types according to error codes
      return ErrorResult(Failure(e.toString()));
    }
  }
}
