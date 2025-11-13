//@GeneratedMicroModule;CorePackageModule;package:core/src/config/injector/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core/src/config/injector/core_injector_module.dart' as _i24;
import 'package:core/src/data/behaviors/authenticate_behavior.dart' as _i238;
import 'package:core/src/data/services/auth_service.dart' as _i392;
import 'package:core/src/data/sources/auth_api.dart' as _i987;
import 'package:core/src/domain/models/use_cases/authenticate_use_case.dart'
    as _i76;
import 'package:core/src/presentation/blocs/auth_cubit.dart' as _i664;
import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;

class CorePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final coreInjectorModule = _$CoreInjectorModule();
    gh.singleton<_i361.Dio>(
      () => coreInjectorModule.getProtectedDio(),
      instanceName: 'protected-dio',
    );
    gh.factory<_i987.AuthApi>(() => coreInjectorModule
        .authApi(gh<_i361.Dio>(instanceName: 'protected-dio')));
    gh.singleton<_i392.AuthService>(() => _i392.AuthService(
          gh<_i987.AuthApi>(),
          gh<_i361.Dio>(instanceName: 'protected-dio'),
        ));
    gh.factory<_i238.AuthenticateBehavior>(
        () => coreInjectorModule.authenticateBehavior(gh<_i392.AuthService>()));
    gh.factory<_i76.AuthenticateUseCase>(
        () => _i76.AuthenticateUseCase(gh<_i238.AuthenticateBehavior>()));
    gh.factory<_i664.AuthCubit>(
        () => _i664.AuthCubit(gh<_i76.AuthenticateUseCase>()));
  }
}

class _$CoreInjectorModule extends _i24.CoreInjectorModule {}
