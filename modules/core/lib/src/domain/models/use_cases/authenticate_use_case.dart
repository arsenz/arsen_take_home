import 'package:core/src/data/behaviors/authenticate_behavior.dart';
import 'package:injectable/injectable.dart';
import 'package:core/core.dart';

@injectable
class AuthenticateUseCase {
  final AuthenticateBehavior _behavior;
  AuthenticateUseCase(this._behavior);
  Future<Result<Null>> authenticate() async {
    final result = await _behavior.authenticate();
    return result;
  }
}
