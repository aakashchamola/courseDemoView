import 'package:flutter/material.dart';

class CommonButtonWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onTap;
  final double width;
  final double height;

  const CommonButtonWidget({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onTap,
    this.width = 120,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30)),
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
