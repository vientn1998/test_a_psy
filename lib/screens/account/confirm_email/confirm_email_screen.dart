import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/screens/account/change_password/new_password_screen.dart';
import '../../../widgets/app_bar.dart';
import 'widgets/text_field_pin_code.dart';
import '../../../app/import_file_common.dart';

class ConfirmEmailScreen extends StatefulWidget {
  @override
  _ConfirmEmailScreenState createState() => _ConfirmEmailScreenState();
}

class _ConfirmEmailScreenState extends State<ConfirmEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: widgetAppBarText(
          title: '',
          titleRight: getTranslated(context, CONFIRM),
          isHiddenRight: false,
          actionBack: () {
            Get.back();
          },
          actionRight: () {
            FocusScope.of(context).unfocus();
            Get.to(NewPasswordScreen());
          }),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppDimens.paddingDefault),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                getTranslated(context, CONFIRM_EMAIL),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: AppColors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter the code sent to abc@gmail.com',
                textAlign: TextAlign.center,
                style: AppTheme.text16RegularWhite,
              ),
              SizedBox(
                height: 40,
              ),
              TextFiledPinCode(),
              Row(
                children: [
                  Text(
                    getTranslated(context, INCORRECT_PASSCODE),
                    textAlign: TextAlign.start,
                    style: AppTheme.textInvalidTextField,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    getTranslated(context, DID_NOT_GET_SEND_AGAIN),
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
