import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _appColors = AppColors._();
  factory AppColors() {
    return _appColors;
  }
  AppColors._();
  static const primary = Color(0xff733ED2);
  static const textPrimary = Color(0xFF424242);
  static const white = Colors.white;
  static const lineMenu = Color(0xFFCFCFCF);
  static const invalidTextField = Color(0xFF50E3C2);
  static const lineTextField = Color(0xFFF7F7F7);
  static const backgroundBtnEditAvatar = Color(0xFFCFCFCF);
  static const backgroundBtnIcon = Color(0xFF424242);
  static const iconDefault = Color(0xFF424242);
}