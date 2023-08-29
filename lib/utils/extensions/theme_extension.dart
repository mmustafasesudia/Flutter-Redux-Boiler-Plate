import 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get height => mediaQuery.size.height;

  double get width => mediaQuery.size.width;

  double heightValue(double value) => mediaQuery.size.height * value;

  double widthValue(double value) => mediaQuery.size.width * value;
}
