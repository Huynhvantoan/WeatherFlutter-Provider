import 'package:weather/core/services/api.dart';
import 'package:weather/core/viewmodels/weather_model.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt();

void setupLocator(){
  locator.registerLazySingleton(()=> WeatherModel());
  locator.registerLazySingleton(()=> Api());
}