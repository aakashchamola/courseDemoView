import 'package:flutter/material.dart';
import 'package:ostello_design/core/utils/constants.dart';
import 'package:ostello_design/core/utils/routes.dart';
import 'package:ostello_design/features/presentation/pages/home_screen/home_screen.dart';
import 'package:ostello_design/features/presentation/pages/main_screen.dart';

void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: Constants.appName,

      /// locale: Locale('en', 'IND'),
      locale: const Locale('en'),
      // localizationsDelegates: const [
      //   MyLocalizationsDelegate(),
      // ],
      supportedLocales: const [Locale('en')],
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.mainScreen,
      routes: _registerRoutes(),
    );
  }

  Map<String, WidgetBuilder> _registerRoutes() {
    return <String, WidgetBuilder>{
      AppRoutes.mainScreen: (context) => MainScreen(),
      AppRoutes.homeScreen: (context) => HomeScreen(toggleDrawer: () {})
    };
  }
}
