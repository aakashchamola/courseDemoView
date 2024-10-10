import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ostello_design/core/utils/constants.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ostello_design/core/common_widgets/common_button_widget.dart';
// import 'package:ostello_design/core/utils/constants.dart';

class MainAppBarWidget extends StatelessWidget {
  final VoidCallback onDrawerTap;
  final bool isOnlineSelected;
  const MainAppBarWidget({
    Key? key,
    required this.onDrawerTap,
    required this.isOnlineSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 25, // Set the radius
                    backgroundImage: AssetImage(
                        ImageConstants.icProfile), // Replace with your asset
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
                            fontSize: 22,
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
                          fontSize: 12,
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
                    icon: Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
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
        ],
      ),
    );
  }
}
