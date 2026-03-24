import 'package:flutter/material.dart';

class TColors {
  TColors._();

  static const Color primaryColor = Color(0xFF1976D2); // Example blue
  static const Color accentColor = Color(0xFFFFC107); // Example amber
  static const Color backgroundColor = Color(0xFFF5F5F5); // Example light gray

  static const Gradient gradientColor = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [Color(0xFF1976D2), Color(0xFFFFC107), Color(0xFFF5F5F5)],
  );
}
