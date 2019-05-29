import 'package:weather/core/enums/view_state.dart';
import 'package:weather/core/models/weather.dart';
import 'package:weather/core/services/api.dart';
import 'package:weather/core/di/locator.dart';
import 'base_model.dart';

class SettingModel extends BaseModel {
  final Api _api = locator<Api>();
  Weather weather;

  Future getInfoProfile(String city) async {
    setState(ViewSate.Loading);
    weather = await _api.getWeather(city);
    setState(ViewSate.Success);
  }
}


/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum TemperatureUnits { fahrenheit, celsius }

class Settings with ChangeNotifier{
  final temperatureUnits = TemperatureUnits.fahrenheit;


}
abstract class SettingsEvent extends Equatable {}

class TemperatureUnitsToggled extends SettingsEvent {}

class SettingsState extends Equatable {
  final TemperatureUnits temperatureUnits;

  SettingsState({@required this.temperatureUnits})
      : assert(temperatureUnits != null),
        super([temperatureUnits]);
}

class SettingBloc extends Bloc<SettingsEvent, SettingsState> {
  @override
  SettingsState get initialState =>
      SettingsState(temperatureUnits: TemperatureUnits.celsius);

  @override
  Stream<SettingsState> mapEventToState(
      SettingsState currentState, SettingsEvent event) async* {
    if (event is TemperatureUnitsToggled) {
      yield (SettingsState(
          temperatureUnits:
              currentState.temperatureUnits == TemperatureUnits.celsius
                  ? TemperatureUnits.fahrenheit
                  : TemperatureUnits.celsius));
    }
  }
}

*/