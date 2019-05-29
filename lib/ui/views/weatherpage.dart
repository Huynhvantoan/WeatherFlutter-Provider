import 'package:flutter/material.dart';
import 'base_view.dart';
import 'package:weather/core/viewmodels/viewmodel.dart';
import 'package:weather/core/enums/view_state.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<WeatherModel>(
        //onModelReady: (model) => model.getWeather(''),
        builder: (build, model, child) => Scaffold(
            appBar: AppBar(
              title: Text('Weather'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      Navigator.pushNamed(context, '/setting');
                    }),
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () async {
                      final city =
                          await Navigator.pushNamed(context, '/search');
                      if (city != null) model.getWeather(city);
                    })
              ],
            ),
            body: Center(
              child: model.state == ViewSate.Idle
                  ? Center(
                      child: Text(
                        'Please Select a Location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  : model.state == ViewSate.Loading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : model.state == ViewSate.Error
                          ? Center(
                              child: Text(
                                'Something went wrong!',
                                style: TextStyle(
                                    color: Colors.red.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            )
                          : Text('Success: ${model.weather.weather[0].icon}'),
            )));
  }
}

/*
  child: BlocBuilder(
                  bloc: weatherBloc,
                  builder: (_, WeatherState state) {
                    if (state is WeatherEmty) {
                      return Center(
                        child: Text(
                          'Please Select a Location',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      );
                    } else if (state is WeatherError) {
                      return Center(
                        child: Text(
                          'Something went wrong!',
                          style: TextStyle(
                              color: Colors.red.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      );
                    } else if (state is WeatherLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is WeatherLoader) {
                      final weatherState = state.weather;
                      final themeBloc = BlocProvider.of<ThemeBloc>(context);
                      themeBloc.dispatch(WeatherChanged(
                          weatherCondition: weatherState.condition));
                      refreshCompleter?.complete();
                      refreshCompleter = Completer();
                      return BlocBuilder(
                          bloc: themeBloc,
                          builder: (_, ThemeState state) {
                            print(state);
                            return GradientContainer(
                              color: state.color,
                              child: RefreshIndicator(
                                onRefresh: () {
                                  weatherBloc.dispatch(RefreshWeather(
                                      city: weatherState.location));
                                  return refreshCompleter?.future;
                                },
                                child: ListView(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 100),
                                      child: Center(
                                        child: Location(
                                            location: weatherState.location),
                                      ),
                                    ),
                                    Center(
                                      child: LastUpdated(
                                          dateTime: weatherState.lastUpdated),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 50),
                                      child: Center(
                                        child: WeatherTemperature(
                                          weather: weatherState,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  },
                ),
              ),
            ));
*/
