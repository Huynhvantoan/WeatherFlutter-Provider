/*
import 'package:flutter/material.dart';
import 'package:weather/models/models.dart';

class WeatherConditions extends StatelessWidget {
  final WeatherCondition weatherCondition;

  const WeatherConditions({Key key,@required this.weatherCondition})
      : assert(weatherCondition != null),
        super(key: key);

  @override
  Widget build(BuildContext context) => _mapConditionToImage(weatherCondition);

  Image _mapConditionToImage(WeatherCondition weatherCondition) {
    Image image;
    switch (weatherCondition) {
      case WeatherCondition.snow:
      case WeatherCondition.heavyRain:
      case WeatherCondition.lightRain:
      case WeatherCondition.hail:
      case WeatherCondition.clear:
      case WeatherCondition.sleet:
        image = Image.asset('assets/snow.png');
        break;
      case WeatherCondition.thunderstorm:
        image = Image.asset('assets/thunderstorm.png');
        break;
      case WeatherCondition.showers:
        image = Image.asset('assets/rainy.png');
        break;
      case WeatherCondition.heavyCloud:
        image = Image.asset('assets/cloudy.png');
        break;
      case WeatherCondition.lightCloud:
        image = Image.asset('assets/clear.png');
        break;
      case WeatherCondition.unknown:
        image = Image.asset('assets/clear.png');
        break;
    }
    return image;
  }
}
*/
