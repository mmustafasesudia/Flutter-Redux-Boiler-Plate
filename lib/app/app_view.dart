import 'package:boilerplate/presentation/home/redux/home_state.dart';
import 'package:boilerplate/presentation/home/redux/reducer.dart';
import 'package:boilerplate/service/di.dart';
import 'package:boilerplate/utils/app_constants/app_context.dart';
import 'package:boilerplate/utils/app_routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<HomeState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: GlobalContext.navigatorKey,
        themeMode: ThemeMode.light,
        routes: getIt<AppRoutes>().routes,
      ),
    );
  }
}
