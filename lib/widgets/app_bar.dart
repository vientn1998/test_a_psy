import 'package:flutter/material.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_theme.dart';

Widget widgetAppBar(
    {String title = "",
    IconData iconLeft = Icons.arrow_back,
    IconData iconRight = Icons.add,
    IconData iconRightSecond = Icons.remove,
    bool isHiddenIconLeft = false,
    bool isHiddenIconRight = true,
    bool isHiddenIconRightSecond = true,
    double sizeIconRight = 24,
    double elevation = 4,
    Color backgroundColor = AppColors.primary,
    Function actionBack,
    Function actionRight}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: backgroundColor,
    brightness: Brightness.light,
    elevation: elevation,
    title: Text(
      title,
      style: AppTheme.textTitleAppBar,
    ),
    leading: isHiddenIconLeft
        ? Container()
        : IconButton(
            icon: Icon(
              iconLeft,
              color: Colors.white,
              size: 22,
            ),
            padding: EdgeInsets.only(right: 7),
            onPressed: actionBack,
          ),
    actions: [
      isHiddenIconRightSecond
          ? Container()
          : IconButton(
              icon: Icon(
                iconRightSecond,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
      isHiddenIconRight
          ? Container()
          : IconButton(
              icon: Icon(
                iconRight,
                color: Colors.white,
                size: sizeIconRight,
              ),
              onPressed: actionRight,
            ),
    ],
  );
}
