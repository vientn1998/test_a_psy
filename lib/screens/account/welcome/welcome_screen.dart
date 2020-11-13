import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_dimen.dart';
import 'package:shapee_project/constant/app_font.dart';
import 'package:shapee_project/constant/app_image.dart';
import 'package:shapee_project/constant/app_theme.dart';
import 'package:shapee_project/screens/account/login/login_screen.dart';
import 'package:shapee_project/screens/account/register/register_screen.dart';
import 'package:shapee_project/utils/string_utils.dart';

class WelcomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    AppTheme.setUpStatusBar();
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Image.asset(
            StringUtils.getUrlAssets(AppImage.background_welcome),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
            alignment: Alignment.center,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(StringUtils.getUrlAssets("ic_logo_welcome")),
                  SizedBox(height: AppDimens.heightButton,),
                  _widgetBtn("GET STARTED", false),
                  _widgetBtn("Login", true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _widgetBtn(String title, bool isLogin) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            height: AppDimens.heightButton,
            child: RaisedButton(
              onPressed: () {
                if (isLogin) {
                  Get.to(LoginScreen());
                } else {
                  Get.to(RegisterScreen());
                }
              },
              child: Text(
                title,
                style: TextStyle(
                    color: isLogin ? AppColors.text : Colors.white,
                    fontSize: 15,
                    fontFamily: FontFamily.bold),
              ),
              elevation: 0,
              color: isLogin ? Colors.white : AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
