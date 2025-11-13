import 'package:arsen_take_home/config/app_router.dart';
import 'package:arsen_take_home/config/injector/di.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

void main() async {
  await dotenv.load();
  await configureDependencies();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<AuthCubit>(),
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        theme: lightTheme,
      ),
    );
  }
}
