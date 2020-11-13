import 'package:flutter/material.dart';
import 'package:shapee_project/localization/app_localization.dart';

class StringUtils {

  static final StringUtils _appConstant = StringUtils._internal();

  factory StringUtils() {
    return _appConstant;
  }

  StringUtils._internal();
  static String getUrlAssets(String image) => "assets/images/$image.png";

}