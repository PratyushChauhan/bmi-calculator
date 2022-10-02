import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.text, required this.onTap});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Text(
          text,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
