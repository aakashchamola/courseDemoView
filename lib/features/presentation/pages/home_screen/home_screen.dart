import 'package:flutter/material.dart';
import 'package:ostello_design/core/common_widgets/common_button_widget.dart';
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
            isOnlineSelected: isOnlineSelected, // Pass the selected state
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Online Button
                  CommonButtonWidget(
                    text: 'Online',
                    backgroundColor: isOnlineSelected
                        ? Color(0xFF272A34) // Dark background when active
                        : Color(0xFFF0F0F0), // Light background when inactive
                    textColor: isOnlineSelected
                        ? Colors.white
                        : Color(
                            0xFF484848), // Adjust text color based on selection
                    onPressed: () =>
                        toggleOnlineOffline(true), // Trigger Online action
                    width: 160,
                    height: 50,
                  ),
                  // Offline Button
                  CommonButtonWidget(
                    text: 'Offline',
                    backgroundColor: !isOnlineSelected
                        ? Color(0xFF272A34) // Dark background when active
                        : Color(0xFFF0F0F0), // Light background when inactive
                    textColor: !isOnlineSelected
                        ? Colors.white
                        : Color(
                            0xFF484848), // Adjust text color based on selection
                    onPressed: () =>
                        toggleOnlineOffline(false), // Trigger Offline action
                    width: 160,
                    height: 50,
                  ),
                ],
              ),
              isOnlineSelected
                  ? OnlineHomeScreenWidget() // Show content when Online is active
                  : OfflineHomeScreenWidget(),
            ],
          ),
        ));
  }
}
