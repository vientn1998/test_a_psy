import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_dimen.dart';
import 'package:shapee_project/constant/app_font.dart';
import 'package:shapee_project/constant/app_theme.dart';
import 'package:shapee_project/extensions/string_extension.dart';
import 'package:shapee_project/screens/account/change_password/email_enter_screen.dart';
import 'package:shapee_project/screens/account/fill_information/fill_information_screen.dart';

class ChooseRoleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppDimens.paddingDefault),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(getTranslated(context, CHOOSE_YOUR_ROLE), style: TextStyle(
                        fontFamily: FontFamily.regular,
                        fontSize: 25,
                        color: AppColors.white
                      ),),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          _buildBtnReader(context),
                          SizedBox(width: AppDimens.paddingDefault,),
                          _buildBtnTester(context),
                        ],
                      )
                    ],
            ),
                )),
            Text(
              getTranslated(context, PRESENT_CHOOSE_ROLE),
              style: AppTheme.text13RegularWhite,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  _buildBtnReader(BuildContext context) {
    return Expanded(
      child: Container(
        height: AppDimens.heightButton,
        child: RaisedButton(
          onPressed: () {
            Get.to(ChangePasswordScreen());
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.borderRadiusBtn),
          ),
          child: Text(
            getTranslated(context, READER),
            style: AppTheme.text15Bold,
          ),
          elevation: 0,
          color: AppColors.text,
        ),
      ),
    );
  }

  _buildBtnTester(BuildContext context) {
    return Expanded(
      child: Container(
        height: AppDimens.heightButton,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.white, width: 1),
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusBtn),
        ),
        child: RaisedButton(
          onPressed: () {
            Get.to(FillInformation());
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.borderRadiusBtn),
          ),
          child: Text(
            getTranslated(context, TESTER),
            style: AppTheme.text15Bold,
          ),
          elevation: 0,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
