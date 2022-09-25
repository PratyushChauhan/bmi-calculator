import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //instance == field == property
  const ReusableCard(
      {required this.color, this.cardChild, required this.onPress});

  final Color? color;
  final Widget? cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        margin: const EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }
}
