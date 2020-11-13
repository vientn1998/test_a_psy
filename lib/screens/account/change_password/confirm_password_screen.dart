import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/import_file_common.dart';
import 'widgets/text_field_email.dart';
class ConfirmPasswordScreen extends StatefulWidget {
  @override
  _ConfirmPasswordScreenState createState() => _ConfirmPasswordScreenState();
}

class _ConfirmPasswordScreenState extends State<ConfirmPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: widgetAppBarText(title: getTranslated(context, CONFIRM_PASSWORD), titleRight: getTranslated(context, DONE), isHiddenRight: false, actionBack: () {
        Get.back();
      }, actionRight: () {
        FocusScope.of(context).unfocus();
      }),
      body: Center(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: AppDimens.paddingDefault),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Text(
                getTranslated(context, CONFIRM_NEW_PASSWORD),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontFamily.regular,
                    fontSize: 25,
                    color: AppColors.white),
              ),
              SizedBox(height: 20,),
              Text(getTranslated(context, TYPE_PASSWORD_AGAIN),
                textAlign: TextAlign.center,
                style: AppTheme.text16RegularWhite,),
              SizedBox(height: 40,),
              TextFileEmailCustom(isPassword: true, hint: getTranslated(context, ENTER),),
            ],
          ),
        ),
      ),
    );
  }
}
