import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour,  this.boxChild, this.onPress});
  final Color colour;
  final Widget? boxChild;
  final dynamic onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Expanded(
        child: Container(
          child: boxChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
