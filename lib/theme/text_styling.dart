
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'my_colors.dart';

class TextStyleCustom {
  static final TextStyleCustom _singleton = TextStyleCustom._internal();
  static const double _letterSpacing = 0, _wordSpacing = 0;

  static TextStyle? font_34Bold,
      font_32Bold,
      font_32regular,
      font_32medium,
      font_30regular,
      font_30Bold,
      font_30medium,
      font_28Regular,
      font_28Medium,
      font_28Bold,
      font_28UltraBold,
      font_25Regular,
      font_25Medium,
      font_25Bold,
      font_22Regular,
      font_22Medium,
      font_22Bold,
      font_20Regular,
      font_20Medium,
      font_20Bold,
      font_18Regular,
      font_18Medium,
      font_18SemiBold,
      font_18Bold, //700
      font_16Regular,
      font_16Medium, //500
      font_16SemiBold,
      font_16Bold,
      font_14Regular,
      font_14Medium,
      font_14Bold,
      font_13Regular,
      font_13Medium,
      font_13Bold,
      font_12Regular,
      font_12Medium,
      font_12Bold;

  static TextTheme textThemeCustom =  const TextTheme(
    //Title headings
    headline1: TextStyle(
      fontSize: 34.0,
      fontFamily: 'ROBOTO',
      letterSpacing: _letterSpacing,
    ),
    headline2: TextStyle(
      fontSize: 30.0,
      letterSpacing: _letterSpacing,
      fontFamily: 'ROBOTO',
      wordSpacing: _wordSpacing,
    ),

    headline4: TextStyle(
      fontSize: 20.0,
      letterSpacing: _letterSpacing,
      fontFamily: 'ROBOTO',
      wordSpacing: _wordSpacing,
    ),

    //Body Text
    bodyText1: TextStyle(
      fontSize: 18.0,
      letterSpacing: _letterSpacing,
      fontFamily: 'ROBOTO',
      wordSpacing: _wordSpacing,
    ),

    //Captions
    caption: TextStyle(
      fontSize: 14.0,
      wordSpacing: _wordSpacing,
      fontFamily: 'ROBOTO',
      letterSpacing: _letterSpacing,
    ),
  );

  factory TextStyleCustom.of(BuildContext context) {
    //Title headings
    font_34Bold = Theme.of(context).textTheme.headline1!.copyWith(
          fontWeight: FontWeight.w700,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );

    font_32regular = Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w400,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_32medium = Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_32Bold = Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );

    ///
    font_30regular = Theme.of(context).textTheme.headline2?.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_30medium = Theme.of(context).textTheme.headline2?.copyWith(
          fontWeight: FontWeight.w500,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_30Bold = Theme.of(context).textTheme.headline2?.copyWith(
          fontWeight: FontWeight.w700,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );

    font_22Regular = Theme.of(context).textTheme.headline2?.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_22Medium = Theme.of(context).textTheme.headline2?.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_22Bold = Theme.of(context).textTheme.headline2?.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );

    font_28Regular = Theme.of(context).textTheme.headline4!.copyWith(
          fontSize: 28,
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w400,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_28Medium = Theme.of(context).textTheme.headline4!.copyWith(
          fontSize: 28,
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w500,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_28Bold = Theme.of(context).textTheme.headline4!.copyWith(
          fontSize: 28,
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w700,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_28UltraBold = Theme.of(context).textTheme.headline4!.copyWith(
          fontSize: 28,
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w900,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );

    font_25Regular = Theme.of(context).textTheme.headline4!.copyWith(
          fontSize: 25,
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w400,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_25Medium = Theme.of(context).textTheme.headline4!.copyWith(
          fontSize: 25,
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w500,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_25Bold = Theme.of(context).textTheme.headline4!.copyWith(
          fontSize: 25,
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w700,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_20Regular = Theme.of(context).textTheme.headline4!.copyWith(
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w400,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_20Medium = Theme.of(context).textTheme.headline4!.copyWith(
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w500,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_20Bold = Theme.of(context).textTheme.headline4!.copyWith(
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w700,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );

    //CallOut text
    font_18Regular = Theme.of(context).textTheme.bodyText1!.copyWith(
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w400,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_18Medium = Theme.of(context).textTheme.bodyText1!.copyWith(
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w500,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_18SemiBold = Theme.of(context).textTheme.bodyText1!.copyWith(
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w600,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );
    font_18Bold = Theme.of(context).textTheme.bodyText1!.copyWith(
          wordSpacing: _wordSpacing,
          fontWeight: FontWeight.w700,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          color: MyColors.textColorDark,
        );

    //sub headline text
    font_16Regular = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          wordSpacing: _wordSpacing,
        );
    font_16Medium = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          wordSpacing: _wordSpacing,
        );
    font_16SemiBold = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          wordSpacing: _wordSpacing,
        );
    font_16Bold = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          wordSpacing: _wordSpacing,
        );

    //Caption 2 text
    font_14Regular = Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.w400,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          wordSpacing: _wordSpacing,
        );
    font_14Medium = Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.w500,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          wordSpacing: _wordSpacing,
        );
    font_14Bold = Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.w700,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          fontFamily: 'ROBOTO',
          wordSpacing: _wordSpacing,
        );

    font_13Regular = Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.w400,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          wordSpacing: _wordSpacing,
          fontFamily: 'ROBOTO',
          fontSize: 13,
        );
    font_13Medium = Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.w500,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          wordSpacing: _wordSpacing,
          fontFamily: 'ROBOTO',
          fontSize: 13,
        );
    font_13Bold = Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.w700,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          wordSpacing: _wordSpacing,
          fontFamily: 'ROBOTO',
          fontSize: 13,
        );

    font_12Regular = Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.w400,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          wordSpacing: _wordSpacing,
          fontFamily: 'ROBOTO',
          fontSize: 12,
        );
    font_12Medium = Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.w500,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          wordSpacing: _wordSpacing,
          fontFamily: 'ROBOTO',
          fontSize: 12,
        );
    font_12Bold = Theme.of(context).textTheme.caption!.copyWith(
          fontWeight: FontWeight.w700,
          color: MyColors.textColorDark,
          letterSpacing: _letterSpacing,
          wordSpacing: _wordSpacing,
          fontFamily: 'ROBOTO',
          fontSize: 12,
        );

    return _singleton;
  }

  TextStyleCustom._internal();
}
