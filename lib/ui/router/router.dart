import 'package:flutter/material.dart';
import 'package:weather/ui/views/viewpage.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => WeatherPage());
      case '/setting':
        return MaterialPageRoute(builder: (_) => SettingPage());
      case '/search':
        return MaterialPageRoute(builder: (_) => CityPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
