import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/screens/account/confirm_email/confirm_email_screen.dart';
import '../../../widgets/app_bar.dart';
import 'widgets/text_field_email.dart';
import '../../../app/import_file_common.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: widgetAppBarText(
          title: getTranslated(context, ENTER_EMAIL),
          titleRight: getTranslated(context, NEXT),
          isHiddenRight: false,
          actionBack: () {
            Get.back();
          },
          actionRight: () {
            FocusScope.of(context).unfocus();
            Get.to(ConfirmEmailScreen());
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
                getTranslated(context, ENTER_YOUR_EMAIL),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: AppColors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                getTranslated(context, SENT_PASSCODE_YOUR_EMAIL),
                textAlign: TextAlign.center,
                style: AppTheme.text16RegularWhite,
              ),
              SizedBox(
                height: 40,
              ),
              TextFileEmailCustom(
                hint: getTranslated(context, ENTER),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
