import 'dart:async';

import 'package:core/core.dart';
import 'package:core/src/domain/models/use_cases/authenticate_use_case.dart';
import 'package:core/src/presentation/blocs/auth_state.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthenticateUseCase _authenticateUseCase;
  AuthCubit(this._authenticateUseCase)
    : super(AuthState(authStatus: AuthStatus.unauth())) {
    authenticate();
  }
  Future<void> authenticate() async {
    final result = await _authenticateUseCase.authenticate();
    switch (result) {
      case SuccessResult():
        emit(state.copyWith(authStatus: AuthStatus.success()));
        break;
      case ErrorResult():
      emit(state.copyWith(authStatus: AuthStatus.failure()));
    }
  }
}
