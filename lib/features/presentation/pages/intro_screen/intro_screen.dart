import 'package:flutter/material.dart';
import 'package:ostello_design/core/common_widgets/main_appBar_widget.dart';

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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 70),
        child: MainAppBarWidget(
          onDrawerTap: widget.toggleDrawer,
        ),
      ),
      body: Center(child: Text("Intro Screen")),
    );
  }
}
