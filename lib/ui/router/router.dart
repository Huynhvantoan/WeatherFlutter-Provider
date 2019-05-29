import 'package:flutter/material.dart';
import 'package:weather/ui/views/info_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/info':
        var input = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => InfoView(input));
      case '/login':
        return MaterialPageRoute(builder: (_) => InfoView(''));
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
