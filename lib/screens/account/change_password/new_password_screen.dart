import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/screens/account/confirm_email/confirm_email_screen.dart';

import '../../../constant/app_color.dart';
import '../../../constant/app_dimen.dart';
import '../../../constant/app_font.dart';
import '../../../constant/app_theme.dart';
import '../../../widgets/app_bar.dart';
import 'confirm_password_screen.dart';
import 'widgets/text_field_email.dart';

class NewPasswordScreen extends StatefulWidget {
  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: widgetAppBarText(title: 'New password', titleRight: 'Next', isHiddenRight: false, actionBack: () {
        Get.back();
      }, actionRight: () {
        FocusScope.of(context).unfocus();
        Get.to(ConfirmPasswordScreen());
      }),
      body: Center(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: AppDimens.paddingDefault),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Text(
                'ENTER NEW PASSWORD',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontFamily.regular,
                    fontSize: 25,
                    color: AppColors.white),
              ),
              SizedBox(height: 20,),
              Text('Password should be more than 6 characters and without spaces.',
                textAlign: TextAlign.center,
                style: AppTheme.text16RegularWhite,),
              SizedBox(height: 40,),
              TextFileEmailCustom(isPassword: true,),
            ],
          ),
        ),
      ),
    );
  }
}
