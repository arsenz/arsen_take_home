import 'package:core/src/data/behaviors/authenticate_behavior.dart';
import 'package:core/src/data/services/auth_service.dart';
import 'package:core/src/data/sources/auth_api.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreInjectorModule {
  @injectable
  AuthenticateBehavior authenticateBehavior(AuthService authService) =>
      authService;

  @Named('protected-dio')
  @singleton
  Dio getProtectedDio() => Dio();

  @factoryMethod
  AuthApi authApi(@Named('protected-dio') Dio dio) => AuthApi(dio);
}
