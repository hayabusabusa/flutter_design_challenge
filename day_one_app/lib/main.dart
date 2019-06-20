import 'package:day_one_app/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DayOneApp());
}

class DayOneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day_one_app',
      theme: ThemeData(
        // Color theme
        primaryColor: Color(0xFF334AFF),
        accentColor: Color(0xFFFED000),

        // Text theme
        textTheme: TextTheme(
          title: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          body2: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold
          ),
          body1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.normal
          ),
          caption: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.normal
          ),
        ),

        // AppBar theme
        appBarTheme: AppBarTheme(
          elevation: 0
        )
      ),
      home: Home(),
    );
  }
}
