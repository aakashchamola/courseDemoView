import 'package:flutter/material.dart';

class CommonButtonWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final OutlinedBorder shape;

  const CommonButtonWidget({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    this.width = 120, // Default width
    this.height = 50, // Default height
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
    ), // Default shape as circular
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: shape,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontFamily: 'Avenir LT Pro',
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
