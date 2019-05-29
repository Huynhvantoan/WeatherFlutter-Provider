import 'dart:convert';
import 'package:weather/core/models/weather.dart';
import 'package:http/http.dart' as http;

class Api {
  static const endpoint = 'http://api.openweathermap.org/data/2.5/weather?appId=16a448b85303c11cb1c7675b5646aca0&units=imperial&q=';
  var client = new http.Client();

  Future<Weather> getWeather(String city) async {
    try {
      var response = await client.get('$endpoint$city');
      return Weather.fromJson(json.decode(response.body));
    }catch(ex){
      print('Error$ex');
      return Weather();
    }
  }
}
