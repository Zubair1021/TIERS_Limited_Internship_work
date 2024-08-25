import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'API.dart';
import 'WeatherClass.dart';

const backgroundColor = Color.fromRGBO(190, 216, 250, 1.0);
const Textcolor=Color.fromRGBO(18, 38, 32, 1.0);
const box=Color.fromRGBO(231, 242, 248, 1.0);
const tempcolor=Color.fromRGBO(224, 156, 84, 1.0);
const appbarback=Color.fromRGBO(116, 189, 203, 1.0);
const tDColor=Color.fromRGBO(12, 45, 72, 1.0);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherService _weatherService = WeatherService(); // Your service class
  Weather? _weather;
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  void _fetchWeather() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final weather = await _weatherService.fetchWeather(30.3753,69.3451); // coordinates
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to fetch weather data. Please try again later.';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome! to the AccuWeather', style: TextStyle(color: Colors.white,letterSpacing: 2,fontWeight: FontWeight.bold)),
        backgroundColor: appbarback,
        actions: [
          TextButton(
            onPressed: () {},
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("lib/assets/Images/search.png"),
            ),
          ),
 Container(
   color: Colors.black12,
 child:Image.asset("lib/assets/Images/Animatedgif.gif",height: 300,color: Colors.white,),
 ),
          TextButton(
            onPressed: () {},
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("lib/assets/Images/user.png"),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          // gradient: LinearGradient(
          //   colors: [Colors.blue.shade200, Colors.blue.shade700],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
        ),
        padding: const EdgeInsets.all(16),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : _errorMessage != null
            ? Center(child: Text(_errorMessage!, style: TextStyle(color: Colors.red, fontSize: 18)))
            : _weather != null
            ? WeatherInfo(weather: _weather!)
            : Center(child: Text('No data available')),
      ),
    );
  }
}

class WeatherInfo extends StatelessWidget {
  final Weather weather;

  const WeatherInfo({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('${weather.cityName}, ${weather.country}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: tDColor)),
        SizedBox(height: 15),
        Text(DateFormat('hh:mm a').format(DateTime.now()), style: TextStyle(fontSize: 20, color: Textcolor)), // Current time
        Text(DateFormat('EEEE').format(DateTime.now()), style: TextStyle(fontSize: 13, color: Textcolor)), // Current weekday
        Text(DateFormat('dd MMM yyyy').format(DateTime.now()), style: TextStyle(fontSize: 13, color: Textcolor)), // Current date
        SizedBox(height: 10),
        Image.asset(_getWeatherImage(weather.description).assetName, width: 100, height: 100, fit: BoxFit.contain, errorBuilder: (context, error, stackTrace) => Image.asset('lib/assets/Images/thunderbolt.png', width: 150, height: 150)),
        SizedBox(height: 10),
        Text("${weather.temperature.toStringAsFixed(0)}\u00B0 C", style: TextStyle(color: tempcolor, fontSize: 40, fontWeight: FontWeight.w800)),
        SizedBox(height: 40),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 3),
          children: [
            _buildWeatherDetail('Description', weather.description),
            _buildWeatherDetail('Feels Like', '${weather.feelsLike}°C'),
            _buildWeatherDetail('Humidity', '${weather.humidity}%'),
            _buildWeatherDetail('Wind Speed', '${weather.windSpeed} m/s'),
            _buildWeatherDetail('Maximum Temperature', '${weather.tempMax}°C'),
            _buildWeatherDetail('Minimum Temperature', '${weather.tempMin}°C'),
          ],
        ),
      ],
    );
  }

  Widget _buildWeatherDetail(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: box,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 12, color: Textcolor,fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 5),
          Text(value, style: TextStyle(fontSize: 14, color: Colors.black26, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  AssetImage _getWeatherImage(String description) {
    switch (description.toLowerCase()) {
      case 'clear sky':
        return AssetImage('lib/assets/Images/sunny.png');
      case 'few clouds':
      case 'scattered clouds':
      case 'broken clouds':
        return AssetImage('lib/assets/Images/partly-cloudy.png');
      case 'shower rain':
      case 'rain':
        return AssetImage('lib/assets/Images/raining.png');
      case 'thunderstorm':
        return AssetImage('lib/assets/Images/thunderbolt.png');
      case 'snow':
        return AssetImage('lib/assets/Images/snowfall.png');
      case 'mist':
        return AssetImage('lib/assets/Images/mist.png');
      default:
        return AssetImage('lib/assets/Images/forcast.png');
    }
  }
}
