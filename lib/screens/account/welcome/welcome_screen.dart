import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shapee_project/constant/app_constant.dart';
import 'package:shapee_project/screens/account/login/login_screen.dart';
import 'package:shapee_project/screens/account/register/register_screen.dart';
import 'package:shapee_project/utils/string_utils.dart';
import '../../../app/import_file_common.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!AppConstant().isFlatFormAndroid) {
      AppTheme.setUpStatusBar();
    }
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Image.asset(
            StringUtils.getImageUrlAssets(AppImage.background_welcome),
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
                  SvgPicture.asset(StringUtils.getImageSVGUrlAssets(AppImage.ic_logo_welcome)),
                  SizedBox(
                    height: AppDimens.heightButton,
                  ),
                  _widgetBtn(getTranslated(context, GET_STARTED), false),
                  _widgetBtn(getTranslated(context, LOGIN), true),
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
                    color: isLogin ? AppColors.textPrimary : Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
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
