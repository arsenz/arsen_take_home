import 'dart:async';
import 'package:arsen_take_home/config/injector/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  externalPackageModulesBefore: [
  ],
)
Future<GetIt> configureDependencies() async {
  return GetIt.instance.init();
}
