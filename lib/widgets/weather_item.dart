import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:today_weather/models/weather_data.dart';

class WeatherItem extends StatelessWidget {
  final WeatherData weather;

  WeatherItem({
    Key key,
    @required this.weather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              weather.name,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              weather.main,
              style: TextStyle(color: Colors.black, fontSize: 24.0),
            ),
            Text(
              '${weather.temp.toString()}°F',
              style: TextStyle(color: Colors.black),
            ),
            Image.network(
              'https://openweathermap.org/img/w/${weather.icon}.png',
            ),
            Text(
              DateFormat.yMMMd().format(weather.date),
              style: TextStyle(color: Colors.black),
            ),
            Text(
              DateFormat.Hm().format(weather.date),
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
