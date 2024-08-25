import 'WeatherClass.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherService {
  static const String apiKey = '0c6507c50c9f5dccd4dc17cc3ff1ad52'; // Replace with your OpenWeatherMap API key

  Future<Weather> fetchWeather(double lat, double lon) async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&appid=$apiKey'));

    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }
}