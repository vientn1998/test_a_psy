import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/screens/account/change_password/new_password_screen.dart';
import 'package:shapee_project/screens/account/change_password/widgets/text_field_email.dart';

import '../../../constant/app_color.dart';
import '../../../constant/app_dimen.dart';
import '../../../constant/app_font.dart';
import '../../../constant/app_theme.dart';
import '../../../widgets/app_bar.dart';
import 'widgets/text_field_pin_code.dart';

class ConfirmEmailScreen extends StatefulWidget {
  @override
  _ConfirmEmailScreenState createState() => _ConfirmEmailScreenState();
}

class _ConfirmEmailScreenState extends State<ConfirmEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: widgetAppBarText(title: '', titleRight: 'Confirm', isHiddenRight: false, actionBack: () {
        Get.back();
      }, actionRight: () {
        FocusScope.of(context).unfocus();
        Get.to(NewPasswordScreen());
      }),
      body: Center(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: AppDimens.paddingDefault),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Text(
                'CONFIRM EMAIL',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontFamily.regular,
                    fontSize: 25,
                    color: AppColors.white),
              ),
              SizedBox(height: 20,),
              Text('Enter the code sent to abc@gmail.com',
                textAlign: TextAlign.center,
                style: AppTheme.text16RegularWhite,),
              SizedBox(height: 40,),
              TextFiledPinCode(),
              Row(
                children: [
                  Text(
                    '**Incorrect passcode. Please try again.',
                    textAlign: TextAlign.start,
                    style: AppTheme.textInvalidTextField,
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  Text(
                    'Didn’t get it? Send again.',
                    textAlign: TextAlign.start,
                    style: AppTheme.text16RegularWhite,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
