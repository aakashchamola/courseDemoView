import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({
    Key? key,
    required this.toggleDrawer,
  }) : super(key: key);

  final VoidCallback toggleDrawer;

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
