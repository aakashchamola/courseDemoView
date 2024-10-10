import 'package:flutter/material.dart';
import 'package:ostello_design/core/common_widgets/main_appBar_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
    required this.toggleDrawer,
  }) : super(key: key);
  final VoidCallback toggleDrawer;
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 70),
        child: MainAppBarWidget(
          onDrawerTap: widget.toggleDrawer,
        ),
      ),
      body: Center(child: Text("Chat Screen")),
    );
  }
}
