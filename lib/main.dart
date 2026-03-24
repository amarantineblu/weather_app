import 'package:flutter/material.dart';
// import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/pages/preloader_page.dart';
import 'package:weather_app/utils/constants/colors.dart';
import 'package:weather_app/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   fontFamily: 'SUSE',
      //   textTheme: TextTheme(
      //     titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      //     bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
      //     bodySmall: TextStyle(fontSize: 14, color: Colors.white),
      //   ),
      //   // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: primaryColor,
      //     primary: primaryColor,
      //     secondary: accentColor,
      //     // background: backgroundColor,
      //   ),
      //   scaffoldBackgroundColor: primaryColor,
      //   primaryTextTheme: TextTheme(titleLarge: TextStyle(color: Colors.white)),
      // ),
      // // home: const MyHomePage(),
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const PreloaderPage(),
    );
  }
}
