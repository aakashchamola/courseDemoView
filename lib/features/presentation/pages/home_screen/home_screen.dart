import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ostello_design/core/common_widgets/common_button_widget.dart';
import 'package:ostello_design/core/common_widgets/main_appBar_widget.dart';
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
  bool isOnlineSelected = true;
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
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF0F0F0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CommonButtonWidget(
                        text: 'Online',
                        backgroundColor: isOnlineSelected
                            ? Color(0xFF272A34)
                            : Color(0xFFF0F0F0),
                        textColor:
                            isOnlineSelected ? Colors.white : Color(0xFF484848),
                        onTap: () => toggleOnlineOffline(true),
                        width: 160,
                        height: 50,
                      ),
                      CommonButtonWidget(
                        text: 'Offline',
                        backgroundColor: !isOnlineSelected
                            ? Color(0xFF272A34)
                            : Color(0xFFF0F0F0),
                        textColor: !isOnlineSelected
                            ? Colors.white
                            : Color(0xFF484848),
                        onTap: () => toggleOnlineOffline(false),
                        width: 160,
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
              isOnlineSelected
                  ? OnlineHomeScreenWidget()
                  : OnlineHomeScreenWidget(),
            ],
          ),
        ));
  }
}
