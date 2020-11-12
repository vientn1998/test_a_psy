import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _appColors = AppColors._();
  factory AppColors() {
    return _appColors;
  }
  AppColors._();
  static const primary = Color(0xff733ED2);
  static const text = Color(0xFF424242);
  static const title = Color(0xFF111114);
  static const white = Colors.white;
  static const lineTextField = Color(0xFFF7F7F7);
}