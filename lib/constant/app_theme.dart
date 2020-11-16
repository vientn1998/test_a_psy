import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shapee_project/utils/constant.dart';

import 'app_color.dart';

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
  }

  static setUpStatusBarHome() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.black12, // Color for Android
        statusBarBrightness:
        Brightness.dark // Dark == white status bar -- for IOS.
    ));
  }

  static final ThemeData themeDataAndroid = ThemeData(
    primaryColor: AppColors.primary,
    brightness: Brightness.light,
    accentColor: Colors.white,
    cursorColor: Colors.white,
    fontFamily: FONT_APP,
  );

  static final ThemeData themeDataIOS = ThemeData(
    primaryColor: AppColors.primary,
    backgroundColor: AppColors.primary,
    brightness: Brightness.light,
    accentColor: Colors.white,
    cursorColor: Colors.white,
    fontFamily: FONT_APP,
  );

  static final ThemeData themeDataDark = ThemeData(
      primaryColor: AppColors.primary,
      primaryColorBrightness: Brightness.dark,
      brightness: Brightness.dark,
      accentColor: Colors.red,
      fontFamily: FONT_APP,
      accentColorBrightness: Brightness.dark);

  static const TextStyle text10RegularWhite = TextStyle(
    fontSize: 10,
    color: AppColors.white,
  );

  static const TextStyle text13RegularWhite = TextStyle(
    fontSize: 13,
    color: AppColors.white,
  );

  static const TextStyle text14RegularWhite = TextStyle(
    fontSize: 14,
    color: AppColors.white,
  );

  static const TextStyle text14BoldWhite = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle text15RegularWhite = TextStyle(
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle text15Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle hindTextField = TextStyle(
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle text16Medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.textPrimary,
  );

  static const TextStyle text16MediumWhite = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.white,
  );

  static const TextStyle text16BoldWhite = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: AppColors.white,
  );

  static const TextStyle text16RegularWhite = TextStyle(
    fontSize: 16,
    color: AppColors.white,
  );

  static const TextStyle text16Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: AppColors.textPrimary,
  );

  static const TextStyle text26MediumWhite = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 26,
    color: AppColors.white,
  );

  static const TextStyle text20Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.textPrimary,
  );

  static const TextStyle textTextFieldPinCOde = TextStyle(
    fontSize: 44,
    color: AppColors.white,
  );

  static const TextStyle text26MediumHint = TextStyle(
    fontSize: 22,
    color: AppColors.white,
  );

  static const TextStyle buttonDefault = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: AppColors.primary,
  );

  static const TextStyle buttonIconDefault = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
    color: AppColors.white,
  );

  static const TextStyle textInvalidTextField = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: AppColors.invalidTextField,
  );

  static const TextStyle textDesIntro =
      TextStyle(fontSize: 16, color: Colors.white);

  static const TextStyle textTitleAppBar =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white);
}
