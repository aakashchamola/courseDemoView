import 'package:flutter/material.dart';
import 'package:ostello_design/core/common_widgets/main_appBar_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
    required this.toggleDrawer,
  }) : super(key: key);
  final VoidCallback toggleDrawer;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 70),
        child: MainAppBarWidget(
          onDrawerTap: widget.toggleDrawer,
        ),
      ),
      body: Center(child: Text("Profile Screen")),
    );
  }
}
