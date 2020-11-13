import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shapee_project/constant/app_constant.dart';

import 'app_color.dart';
import 'app_font.dart';

class AppTheme {
  static final AppTheme _appConstant = AppTheme._internal();

  factory AppTheme() {
    return _appConstant;
  }

  AppTheme._internal();

  static setUpStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent, // Color for Android
        statusBarBrightness:
            Brightness.dark // Dark == white status bar -- for IOS.
        ));
    // SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
  }

  static final ThemeData themeDataAndroid = ThemeData(
    primaryColor: AppColors.primary,
    brightness: Brightness.light,
    accentColor: Colors.white,
    cursorColor: Colors.white,
    fontFamily: FontFamily.regular,
  );

  static final ThemeData themeDataIOS = ThemeData(
    primaryColor: AppColors.primary,
    backgroundColor: AppColors.primary,
    brightness: Brightness.light,
    accentColor: Colors.white,
    cursorColor: Colors.white,
    fontFamily: FontFamily.regular,
  );

  static final ThemeData themeDataDark = ThemeData(
      primaryColor: AppColors.primary,
      primaryColorBrightness: Brightness.dark,
      brightness: Brightness.dark,
      accentColor: Colors.red,
      fontFamily: FontFamily.regular,
      accentColorBrightness: Brightness.dark);

  static const TextStyle text10RegularWhite = TextStyle(
    fontFamily: FontFamily.regular,
    fontSize: 10,
    color: AppColors.white,
  );

  static const TextStyle text13RegularWhite = TextStyle(
    fontFamily: FontFamily.regular,
    fontSize: 13,
    color: AppColors.white,
  );

  static const TextStyle text15RegularWhite = TextStyle(
    fontFamily: FontFamily.regular,
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle text15Bold = TextStyle(
    fontFamily: FontFamily.bold,
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle hindTextField = TextStyle(
    fontFamily: FontFamily.regular,
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle text16Medium = TextStyle(
    fontFamily: FontFamily.medium,
    fontSize: 16,
    color: AppColors.text,
  );

  static const TextStyle text16MediumWhite = TextStyle(
    fontFamily: FontFamily.medium,
    fontSize: 16,
    color: AppColors.white,
  );

  static const TextStyle text16BoldWhite = TextStyle(
    fontFamily: FontFamily.bold,
    fontSize: 16,
    color: AppColors.white,
  );

  static const TextStyle text16RegularWhite = TextStyle(
    fontFamily: FontFamily.regular,
    fontSize: 16,
    color: AppColors.white,
  );

  static const TextStyle text16Bold = TextStyle(
    fontFamily: FontFamily.bold,
    fontSize: 16,
    color: AppColors.text,
  );

  static const TextStyle text16MediumTitle = TextStyle(
    fontFamily: FontFamily.medium,
    fontSize: 16,
    color: AppColors.title,
  );

  static const TextStyle text26MediumWhite = TextStyle(
    fontFamily: FontFamily.medium,
    fontSize: 26,
    color: AppColors.white,
  );

  static const TextStyle text20Bold = TextStyle(
    fontFamily: FontFamily.bold,
    fontSize: 20,
    color: AppColors.text,
  );

  static const TextStyle textTextFieldPinCOde = TextStyle(
    fontFamily: FontFamily.regular,
    fontSize: 44,
    color: AppColors.white,
  );

  static const TextStyle text26MediumHint = TextStyle(
    fontFamily: FontFamily.regular,
    fontSize: 22,
    color: AppColors.white,
  );

  static const TextStyle buttonDefault = TextStyle(
    fontFamily: FontFamily.bold,
    fontSize: 16,
    color: AppColors.primary,
  );

  static const TextStyle buttonIconDefault = TextStyle(
    fontFamily: FontFamily.bold,
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle textInvalidTextField = TextStyle(
    fontFamily: FontFamily.bold,
    fontSize: 14,
    color: AppColors.invalid,
  );

  static const TextStyle textDesIntro = TextStyle(
      fontFamily: FontFamily.regular, fontSize: 16, color: Colors.white);

  static const TextStyle textTitleAppBar = TextStyle(
      fontFamily: FontFamily.medium, fontSize: 20, color: Colors.white);
}
