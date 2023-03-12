import 'package:flutter/material.dart';
import 'package:omnipro_flutter_code_test/presentation/screens/home/home_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
  };
}
