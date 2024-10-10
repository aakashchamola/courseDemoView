import 'package:flutter/material.dart';
import 'package:ostello_design/core/common_widgets/main_appBar_widget.dart';

class BatchesScreen extends StatefulWidget {
  const BatchesScreen({
    Key? key,
    required this.toggleDrawer,
  }) : super(key: key);
  final VoidCallback toggleDrawer;
  @override
  State<BatchesScreen> createState() => _BatchesScreenState();
}

class _BatchesScreenState extends State<BatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 70),
        child: MainAppBarWidget(
          onDrawerTap: widget.toggleDrawer,
        ),
      ),
      body: Center(child: Text("Batches Screen")),
    );
  }
}
