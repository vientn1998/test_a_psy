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

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: widgetAppBarText(title: 'Enter email', titleRight: 'Next', isHiddenRight: false, actionBack: () {
        Get.back();
      }, actionRight: () {
        FocusScope.of(context).unfocus();
        Get.to(ConfirmEmailScreen());
      }),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppDimens.paddingDefault),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Text(
                'ENTER YOUR EMAIL',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontFamily.regular,
                    fontSize: 25,
                    color: AppColors.white),
              ),
              SizedBox(height: 20,),
              Text('A passcode will be sent to your new email address to verify your email account.',
                textAlign: TextAlign.center,
                style: AppTheme.text16RegularWhite,),
              SizedBox(height: 40,),
              TextFileEmailCustom(),

            ],
          ),
        ),
      ),
    );
  }
}
