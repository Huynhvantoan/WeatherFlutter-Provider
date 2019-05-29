import 'package:flutter/material.dart';
import 'package:weather/core/models/weather.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  WeatherWidget(this.weather);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Success: ${weather.weather[0].icon}')
        ],
      )
    );
  }
}