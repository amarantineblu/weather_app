// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DrawerScreenWrapper extends StatelessWidget {
  final Widget child;

  const DrawerScreenWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: child);
  }
}
