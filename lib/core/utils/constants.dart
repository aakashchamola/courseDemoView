import 'package:flutter/material.dart';

class Constants {
  //Base Constants
  static const String dbName = "app.db";
  static const String appName = "Test App";
  static const String autorization = "Authorization";

  //base const errors
  static const errorInternet = "Your internet is not working it seems";
  static const String errorNoInternet = "No internet available";
  static const String errorUnkown = "Unknown error occurred";
  static const String errorTypeServer = "Server Error";
  static const String errorTypeTimeOut = "Time Out";

  //Base URL
  static const String baseUrl =
      "http:// enter server url"; //TODO: add server link

  //EndPoints
  static const String endPoint = "";
}

class AppColors {
  static const List<Color> avatarColors = [
    circleColor2,
    backgroundColorF5,
    circleColor0C,
  ];
  static const Color textColor4B = Color(0xff00234B);
  static const Color textColor = Color(0xff252525);
  static const Color textColor25 =
      Color(0xff252525); // TODO: remove one same colors
  static const Color textColor2 = Color(0xff000000);
  static const Color whiteFF = Color(0xffFFFFFF);
  static const Color buttonEF = Color(0xffEFEFEF);
  static const Color backgroundColorF5 = Color(0xffF5F5F5);
  static const Color backgroundE5 = Color(0xffE5E5E5);
  static const Color circleColor1 = Color(0xfff88a00);
  static const Color circleColor0C = Color(0xfffc940c);
  static const Color circleColor2 = Color(0x66fc940c);
  static const Color indicatorColor5D = Color(0xffFF5D5D);
  static const Color otp00 = Color(0xffFF0000);
  static const Color textColor4C = Color(0xff4C4C4C);
  static const Color transparent = Colors.transparent;
  static const Color blackColor = Color(0xff000000);
  static const Color blueColor = Colors.blue;
  static const Color progressColor = Color(0xfffc940c);
  static const Color progressLeftColorC4 = Color(0xffC4C4C4);
  static const Color textDesignColor = Color(0xfff4f4f4);
  static const Color gradientColorF3 = Color(0xFFDFE9F3);
  static const Color topicColor0C = Color(0xffFC940C);
  static const Color greenColor04 = Color(0xff07B204);
  static const Color creamColor02 = Color(0xFFECEAE8);
  static const Color creamColor01 = Color(0xFFE8C892);
  static const Color greyChartColor = Color(0xFFBDBDBD);
  static const Color darkBlue = Color(0xFF0A72C7);
}

class ImageConstants {
  static const String attendanceLogo = "assets/images/attendanceLogo.png";
  static const String assessmentLogo = "assets/images/assessmentLogo.png";
  static const String icClassroom = "assets/images/classroom.jpg";
  static const String freeCourseLogo = "assets/images/freeCoursesLogo.png";
  static const String neetToppersLogo1 = "assets/images/neetToppersLogo1.png";
  static const String neetToppersLogo2 = "assets/images/neetToppersLogo2.png";
  static const String neetToppersLogo3 = "assets/images/neetToppersLogo3.png";
  static const String neetToppersLogo4 = "assets/images/neetToppersLogo4.png";
  static const String icProfile = "assets/images/profile.png";
  static const String rewardLogo = "assets/images/rewardsLogo.png";
  static const String storeLogo = "assets/images/storeLogo.png";
  static const String studentLogo1 = "assets/images/studentLogo1.png";
  static const String studentLogo2 = "assets/images/studentLogo2.png";
  static const String checkCourseLogo = "assets/images/checkCourseLogo.png";
  static const String navHomeIcon = "assets/images/navHomeIcon.png";
  static const String navBatchesIcon = "assets/images/navBatchesIcon.png";
  static const String navProfileIcon = "assets/images/navProfileIcon.png";
  static const String navChatIcon = "assets/images/navChatIcon.png";
  static const String aspirantLogo = "assets/images/aspirantLogo.png";
  static const String batchScheduleLogo = "assets/images/batchScheduleLogo.png";
  static const String liveLogo = "assets/images/liveLogo.png";
  static const String syllabusLogo = "assets/images/syllabusLogo.png";
}
