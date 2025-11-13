import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/src/presentation/blocs/weather_search_bloc.dart';
import 'package:weather/src/presentation/blocs/weather_search_event.dart';
import 'package:weather/src/presentation/blocs/weather_search_state.dart';

@RoutePage()
class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<WeatherSearchBloc>(),
      child: BlocBuilder<WeatherSearchBloc, WeatherSearchState>(
        builder: (context, state) {
          return BaseScaffold(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, authState) {
return authState.authStatus.maybeWhen(
  success: () =>  SearchField(
                          controller: _controller,
                          suggestions: state.citiesStatus.maybeWhen(
                            success: (locations) {
                              return locations
                                  .map((location) => location.name)
                                  .toList();
                            },
                            orElse: () => [],
                          ),
                          onChanged: (searchTerm) {
                            context.read<WeatherSearchBloc>().add(
                              WeatherSearchLocationTyped(query: searchTerm),
                            );
                          },
                          onSuggestionTapped: (index) {
                            state.citiesStatus.maybeWhen(
                              success: (locations) {
                                final chosenLocation = locations[index];
                                _controller.text = chosenLocation.name;
                                context.read<WeatherSearchBloc>().add(
                                  WeatherSearchLocationTapped(
                                    location: chosenLocation,
                                  ),
                                );
                              },
                              orElse: () {},
                            );
                          },
                        ),
                        failure: () => Button(text: 'auth failed, tap to retry', onTap: () => context.read<AuthCubit>().authenticate(),),
  orElse: ()=> SizedBox());
                       
                      },
                    ),
                    Spacer(),
                    state.weatherStatus.maybeWhen(
                      success: (forecast) {
                        return Center(
                          child: HeadlineDisplay(
                            text: '${forecast.main.temp.toString()}°C',
                          ),
                        );
                      },
                      loading: () => CircularProgressIndicator(),
                      failure: (reason) => Text(reason),
                      orElse: () => SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
