import 'package:flutter/material.dart';

const activeCardColour = Color(0xFF4c5065);

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.cardChild});

  final Widget cardChild;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour != null ? colour : activeCardColour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
