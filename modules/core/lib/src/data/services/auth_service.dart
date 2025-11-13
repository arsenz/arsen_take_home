import 'dart:async';

import 'package:core/core.dart';
import 'package:core/src/data/behaviors/authenticate_behavior.dart';
import 'package:core/src/data/sources/auth_api.dart';
import 'package:core/src/domain/models/result.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthService implements AuthenticateBehavior {
  final AuthApi _api;
  final  Dio _dio;
  AuthService(this._api, @Named('protected-dio') this._dio);



  @override
  Future<Result<Null>> authenticate() async {
    /// 1. Get Auth Token
    try {
      final token = await _api.getAuthToken(
        "client_credentials",
        dotenv.env['AMADEUS_API_KEY'] ?? '',
        dotenv.env['AMADEUS_SECRET'] ?? '',
      );
      _dio.options.headers["Authorization"] = "Bearer ${token.accessToken}";
      return SuccessResult(null);
    } catch (e) {
      return ErrorResult(Failure(e.toString()));
    }
  }
}
