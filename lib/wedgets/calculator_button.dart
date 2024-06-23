import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String? buttonText;
  final VoidCallback? buttonTapped; // Using VoidCallback for onPressed

  CalculatorButton({
    required this.color,
    required this.textColor,
    this.buttonText,
    required this.buttonTapped,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30), // Half of the width (or height) for perfect circle
        child: Material(
          color: color,
          child: InkWell(
            onTap: buttonTapped,
            child: Center(
              child: Text(
                buttonText!,
                style: TextStyle(color: textColor, fontSize: 35.0 , fontWeight: FontWeight.bold),
              ),

            ),
          ),
        ),
      ),
    );
  }




}
