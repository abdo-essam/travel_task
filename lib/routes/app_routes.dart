import 'package:flutter/material.dart';
import '../presentation/trips_screen/trips_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String tripsScreen = '/trips_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    tripsScreen: (context) => TripsScreen(),
    initialRoute: (context) => TripsScreen(),
  };
}
