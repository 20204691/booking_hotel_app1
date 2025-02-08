import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/k0_screen/k0_screen.dart';
import '../presentation/k1_screen/k1_screen.dart';
import '../presentation/k2_screen/k2_screen.dart';
import '../presentation/k3_screen/k3_screen.dart';

class AppRoutes {
  static const String k0Screen = '/k0_screen';
  static const String k1Screen = '/k1_screen';
  static const String k2Screen = '/k2_screen';
  static const String k3Screen = '/k3_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    k0Screen: (context) => K0Screen(),

    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute:(context) => K0Screen()
  };

}

