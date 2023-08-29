import 'package:boilerplate/presentation/home/ui/screen/home_screen.dart';
import 'package:boilerplate/presentation/splash/ui/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  final Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) => const SplashScreen(),
    MyHomePage.routeName: (_) => const MyHomePage(),
  };
}
