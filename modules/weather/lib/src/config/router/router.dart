import 'package:auto_route/auto_route.dart';
import 'package:weather/weather.dart';


part 'router.gr.dart';

@AutoRouterConfig()
class WeatherRouteModule extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: WeatherRoute.page, initial: true),
  ];
}
