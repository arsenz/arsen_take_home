import 'package:core/core.dart';

abstract interface class AuthenticateBehavior {
  Future<Result<Null>> authenticate();
}
