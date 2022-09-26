import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}
