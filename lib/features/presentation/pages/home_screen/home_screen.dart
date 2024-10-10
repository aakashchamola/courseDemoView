import 'package:flutter/material.dart';
import 'package:ostello_design/core/common_widgets/main_appBar_widget.dart';
import 'package:ostello_design/features/presentation/pages/home_screen/offlineHomeScreenWidget.dart';
import 'package:ostello_design/features/presentation/pages/home_screen/onlineHomeScreenWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.toggleDrawer,
  }) : super(key: key);

  final VoidCallback toggleDrawer;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isOnlineSelected = true; // By default, Online is selected
  _HomeScreenState();
  void toggleOnlineOffline(bool isOnline) {
    setState(() {
      isOnlineSelected = isOnline;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 70),
        child: MainAppBarWidget(
          onDrawerTap: widget.toggleDrawer,
          key: widget.key!,
          isOnlineSelected: isOnlineSelected, // Pass the selected state
          onOnlinePressed: () => toggleOnlineOffline(true), // Toggle to Online
          onOfflinePressed: () => toggleOnlineOffline(false),
        ),
      ),
      body: isOnlineSelected
          ? OnlineHomeScreenWidget() // Show content when Online is active
          : OfflineHomeScreenWidget(),
    );
  }
}
