import 'package:auto_route/auto_route.dart';
import 'package:weather/weather.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final weatherRouter = WeatherRouteModule();
  @override
  List<AutoRoute> get routes => [
    ... weatherRouter.routes
  ];
}
