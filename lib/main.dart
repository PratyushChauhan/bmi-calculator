import 'package:flutter/material.dart';
import 'Screens/InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0D22),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
      ),
    );
  }
}
