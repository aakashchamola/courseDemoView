import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ostello_design/core/common_widgets/common_button_widget.dart';

class MainAppBarWidget extends StatelessWidget {
  final VoidCallback onDrawerTap;
  final bool isOnlineSelected;
  final VoidCallback onOnlinePressed;
  final VoidCallback onOfflinePressed;
  const MainAppBarWidget({
    Key? key,
    required this.onDrawerTap,
    required this.isOnlineSelected,
    required this.onOnlinePressed,
    required this.onOfflinePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile Picture
                  ClipOval(
                    child: SvgPicture.asset(
                      'assets/profile.svg',
                      height: 40, // Adjust height/width accordingly
                      width: 40,
                    ),
                  ),

                  SizedBox(width: 12),
                  // Welcome text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Hi, ',
                          style: TextStyle(
                            fontFamily: 'Avenir LT Pro',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF272A34),
                          ),
                          children: [
                            TextSpan(
                              text: 'Krishna',
                              style: TextStyle(
                                color: Colors.purple,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Better yourself each day everyday',
                        style: TextStyle(
                          fontFamily: 'Avenir Next LT Pro',
                          fontSize: 10,
                          color: Color(0xFF484848),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Notification Bell with Badge
              Stack(
                children: [
                  IconButton(
                    icon:
                        Icon(Icons.notifications_outlined, color: Colors.black),
                    onPressed: () {
                      // Notification button action
                    },
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
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
                    : Color(0xFF484848), // Adjust text color based on selection
                onPressed: onOnlinePressed, // Trigger Online action
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
                    : Color(0xFF484848), // Adjust text color based on selection
                onPressed: onOfflinePressed, // Trigger Offline action
                width: 160,
                height: 50,
              ),
            ],
          ),
        ],
      ),
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.black),
        onPressed: onDrawerTap, // Drawer toggle action
      ),
    );
  }
}
