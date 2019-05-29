import 'package:weather/core/enums/view_state.dart';
import 'package:weather/core/models/weather.dart';
import 'package:weather/core/services/api.dart';
import 'package:weather/core/di/locator.dart';
import 'base_model.dart';

class WeatherModel extends BaseModel {
  final Api _api = locator<Api>();
  Weather weather;

  Future getInfoProfile(String city) async {
    setState(ViewSate.Loading);
    weather = await _api.getWeather(city);
    setState(ViewSate.Success);
  }
}
