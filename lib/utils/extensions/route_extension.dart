import 'package:flutter/material.dart';

extension RouteContext on BuildContext {
  //for routes
  pop<T>({T? result}) => Navigator.pop(this, result);

  pushNamed(String routeName, {Object? args}) =>
      Navigator.pushNamed(this, routeName, arguments: args);

  pushReplacementNamed(String routeName, {Object? args}) =>
      Navigator.pushReplacementNamed(this, routeName, arguments: args);

  pushNamedAndRemoveUntil(String routeName, {Object? args}) =>
      Navigator.pushNamedAndRemoveUntil(
        this,
        routeName,
        (Route route) => false,
        arguments: args,
      );
}
