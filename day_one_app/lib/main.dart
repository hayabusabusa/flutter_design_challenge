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
        // AppBar
        appBarTheme: AppBarTheme(
          elevation: 0
        )
      ),
      home: Home(),
    );
  }
}
