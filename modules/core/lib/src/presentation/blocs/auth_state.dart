import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({required AuthStatus authStatus,}) =
      _AuthState;
}

@freezed
sealed class AuthStatus with _$AuthStatus {
  const factory AuthStatus.unauth() = AuthUnauth;

  const factory AuthStatus.loading() = AuthLoading;

  const factory AuthStatus.success() = AuthSuccess;

  const factory AuthStatus.failure() =
      AuthFailure;
}

