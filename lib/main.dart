import 'package:flutter/material.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Niweather',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Implement search functionality
              },
            ),
            SizedBox(width: 20.0),
            Text(
              'City Name',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Implement settings functionality
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/cloud.png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20.0),
            Text(
              '24°C',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Cloudy',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
