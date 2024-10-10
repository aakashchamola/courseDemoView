// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Classed used for navigation in the app
class Navigation {
  /// Function to go to previous screen
  static Future<bool> back(BuildContext context) async {
    // String? currentPath;
    // Navigator.popUntil(context, (route) {
    //   currentPath = route.settings.name;
    //   return true;
    // });
    // FirebaseAnalytics.instance.setCurrentScreen(screenName: currentPath);
    // FirebaseAnalytics.instance.logEvent(name: "Back");

    if (Navigator.of(context).canPop()) {
      return Navigator.of(context).maybePop();
    } else {
      await SystemNavigator.pop();
      return true;
    }
  }

  static Future<bool> backUntil(
      BuildContext context, bool Function(Route) predicate) async {
    // String? currentPath;
    // Navigator.popUntil(context, (route) {
    //   currentPath = route.settings.name;
    //   return true;
    // });
    // FirebaseAnalytics.instance.setCurrentScreen(screenName: currentPath);
    // FirebaseAnalytics.instance.logEvent(name: "Back");

    if (Navigator.of(context).canPop()) {
      Navigator.of(context).popUntil(predicate);
      return true;
    } else {
      await SystemNavigator.pop();
      return true;
    }
  }

  /// Function to go to previous screen
  static backWithData(BuildContext context, Object argumentClass) {
    String? currentPath;
    Navigator.popUntil(context, (route) {
      currentPath = route.settings.name;
      return true;
    });
    // FirebaseAnalytics.instance.setCurrentScreen(screenName: currentPath);

    // FirebaseAnalytics.instance.logEvent(name: "BackWithData");
    Navigator.maybePop(context, argumentClass);
  }

  /// Function to navigate to new screen without data passing
  static intent(BuildContext context, String nameRouted) {
    // FirebaseAnalytics.instance.setCurrentScreen(screenName: nameRouted);
    Navigator.pushNamed(context, nameRouted);
  }

  /// Function to navigate to new screen by replacing it with new screen
  static intentWithoutBack(
      BuildContext context, String nameRouted, Object argumentClass) {
    // FirebaseAnalytics.instance.setCurrentScreen(screenName: nameRouted);
    Navigator.pushReplacementNamed(context, nameRouted,
        arguments: argumentClass);
  }

  /// Function to navigation to new screen and remove all other screens in backstack
  static Future<void> intentWithClearAllRoutes(
      BuildContext context, String nameRouted) async {
    // FirebaseAnalytics.instance.setCurrentScreen(screenName: nameRouted);
    await Navigator.of(context)
        .pushNamedAndRemoveUntil(nameRouted, (Route<dynamic> route) => false);
  }

  /// Function to navigate to new screen and passing some data
  static intentWithData(
      BuildContext context, String nameRouted, Object argumentClass) async {
    // FirebaseAnalytics.instance.setCurrentScreen(screenName: nameRouted);
    await Navigator.pushNamed(context, nameRouted, arguments: argumentClass);
  }

  /// Function to navigate to new screen and passing some data
  static Future<dynamic> intentWithDataAndResult(
      BuildContext context, String nameRouted, Object argumentClass) {
    // FirebaseAnalytics.instance.setCurrentScreen(screenName: nameRouted);
    return Navigator.pushNamed(context, nameRouted, arguments: argumentClass);
  }

  /// Function to navigation to new screen and remove all other screens in backstack
  static intentWithClearAllRoutesWithData(
      BuildContext context, String nameRouted, Object argumentClass) {
    // FirebaseAnalytics.instance.setCurrentScreen(screenName: nameRouted);
    Navigator.of(context).pushNamedAndRemoveUntil(
        nameRouted, (Route<dynamic> route) => false,
        arguments: argumentClass);
  }
}
