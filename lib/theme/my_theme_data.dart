import 'package:flutter/material.dart';
import 'my_colors.dart';
import 'text_styling.dart';

final myLightThemeData = ThemeData(
  canvasColor: Colors.transparent,
  fontFamily: 'ROBOTO',
  primaryColor: MyColors.white,
  scaffoldBackgroundColor: MyColors.bgPageColor,
  textTheme: TextStyleCustom.textThemeCustom,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyleCustom.font_18SemiBold,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    color: MyColors.white,
    elevation: 0,
    centerTitle: false,
    titleSpacing: 16,
    foregroundColor: MyColors.textColorDark
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: TextStyleCustom.font_18SemiBold,
      shadowColor: MyColors.transparent,
      backgroundColor: MyColors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
    ),
  ),
  // colorScheme: ColorScheme.fromSwatch().copyWith(
  //   secondary: MyColors.themeGreen,
  //
  // ),
);

