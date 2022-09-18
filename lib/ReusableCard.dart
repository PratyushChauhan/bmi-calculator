import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //instance == field == property
  const ReusableCard({required this.color, this.cardChild});

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      margin: const EdgeInsets.all(15.0),
      child: cardChild,
    );
  }
}
