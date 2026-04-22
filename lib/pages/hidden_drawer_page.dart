// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/utils/constants/colors.dart';
import 'package:weather_app/utils/widgets/drawer_wrapper_screen.dart';

Widget buildHiddenDrawer() {
  return HiddenDrawerMenu(
    screens: [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Berlin, Germany',
          baseStyle: TextStyle(color: TColors.primaryColor),
          selectedStyle: TextStyle(color: Colors.orange),
        ),
        DrawerScreenWrapper(
          child: MyHomePage(), // your imported home page
        ),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: TextStyle(color: Colors.white),
          selectedStyle: TextStyle(color: Colors.orange),
        ),
        DrawerScreenWrapper(
          child: Container(child: Center(child: Text("Settings Page"))),
        ),
      ),
    ],
    backgroundColorMenu: TColors.primaryColor, // your custom color constant
  );
}
