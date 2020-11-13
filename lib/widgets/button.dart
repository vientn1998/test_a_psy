import 'package:flutter/material.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_dimen.dart';
import 'package:shapee_project/constant/app_image.dart';
import 'package:shapee_project/constant/app_theme.dart';
import 'package:shapee_project/utils/string_utils.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({this.title, this.onPressed});
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.heightButton,
      child: RaisedButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusBtn),
        ),
        child: Text(
          title,
          style: AppTheme.buttonDefault,
        ),
        elevation: 0,
        color: AppColors.white,
      ),
    );
  }
}

class ButtonIconCustom extends StatelessWidget {
  const ButtonIconCustom({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.heightButton,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusBtn),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(StringUtils.getUrlAssets(AppImage.fb_btn)),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: AppTheme.buttonIconDefault,
            ),
          ],
        ),
        elevation: 0,
        color: AppColors.text,
      ),
    );
  }
}
