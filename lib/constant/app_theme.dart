import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_color.dart';
import 'app_font.dart';

class AppTheme {
  AppTheme._();

  static setUpStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness: Brightness.dark // Dark == white status bar -- for IOS.
    ));
    // SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
  }

  static final ThemeData themeData = ThemeData(
    primaryColor: AppColors.primary,
    primaryColorBrightness: Brightness.light,
    brightness: Brightness.dark,
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

  static const TextStyle text15Regular = TextStyle(
    fontFamily: FontFamily.regular,
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle text15Bold = TextStyle(
    fontFamily: FontFamily.bold,
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle text13RegularWhite = TextStyle(
    fontFamily: FontFamily.regular,
    fontSize: 13,
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

  static const TextStyle text16MediumTitle = TextStyle(
    fontFamily: FontFamily.medium,
    fontSize: 16,
    color: AppColors.title,
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

  static const TextStyle textDesIntro = TextStyle(
      fontFamily: FontFamily.regular, fontSize: 16, color: Colors.white);

  static const TextStyle textTitleAppBar = TextStyle(
      fontFamily: FontFamily.medium, fontSize: 16, color: Colors.white);
}
