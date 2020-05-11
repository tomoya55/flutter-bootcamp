import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:clima/utilities/constants.dart';

const owm = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Location location = Location();

  Future<dynamic> getCityWeather(String cityName) async {
    var url = '$owm?q=$cityName&appid=$kOpenWeatherMapAPIKey&units=metric';
    http.Response resp = await http.get(url);
    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else {
      print(resp.statusCode);
    }
  }

  dynamic getLocationWeather() async {
    await location.getCurrentLocation();
    return await getData();
  }

  Future<dynamic> getData() async {
    http.Response resp = await http.get(
        '$owm?units=metric&lat=${location.latitude}&lon=${location.longitude}&appid=$kOpenWeatherMapAPIKey');

    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else {
      print(resp.statusCode);
    }
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
