import 'package:database_school/screen_ui/splash_screen_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}
