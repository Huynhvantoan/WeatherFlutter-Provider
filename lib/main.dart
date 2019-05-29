import 'package:flutter/material.dart';
import 'package:weather/core/di/locator.dart';
import 'package:weather/ui/views/viewpage.dart';
import 'package:weather/ui/router/router.dart';

void main(){
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: WeatherPage(),
      onGenerateRoute: Router.generateRoute,
    );
  }
}