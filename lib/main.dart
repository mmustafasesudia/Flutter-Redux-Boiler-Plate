import 'package:boilerplate/app/app_view.dart';
import 'package:boilerplate/service/di.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();
  runApp(const MyApp());
}
