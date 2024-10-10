import 'package:flutter/material.dart';
import 'package:ostello_design/core/utils/constants.dart';

class MainAppBarWidget extends StatelessWidget {
  final VoidCallback onDrawerTap;
  const MainAppBarWidget({
    Key? key,
    required this.onDrawerTap,
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
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(ImageConstants.icProfile),
                  ),
                  SizedBox(width: 12),
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
              Stack(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
                    onPressed: () {},
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
