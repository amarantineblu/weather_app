// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:weather_app/theme/colors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: Center(
          child: Text(
            "Weather App Home Page",

            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
