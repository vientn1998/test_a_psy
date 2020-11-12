import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_dimen.dart';
import 'package:shapee_project/constant/app_theme.dart';
import 'package:shapee_project/widgets/app_bar.dart';
import 'package:shapee_project/widgets/button.dart';
import 'package:shapee_project/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with AfterLayoutMixin{

  @override
  void initState() {
    super.initState();
    // AppTheme.setUpStatusBar();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: widgetAppBar(actionBack: () {
        Get.back();
      }),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingDefault),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: AppDimens.height20,),
                Row(
                  children: [
                    Expanded(child: ButtonIconCustom(title: "Login with Facebook",)),
                  ],
                ),
                SizedBox(height: AppDimens.height40,),
                Text("or", style: AppTheme.buttonIconDefault,),
                SizedBox(height: AppDimens.height40,),
                TextFieldCustomLogin(hint: "email", textInputType: TextInputType.emailAddress, textInputAction: TextInputAction.next,),
                SizedBox(height: AppDimens.height20,),
                TextFieldCustomLogin(hint: "password", textInputType: TextInputType.text, isPassword: true),
                SizedBox(height: AppDimens.height50,),
                Row(
                  children: [
                    Expanded(child: ButtonCustom(title: "Sign in", onPressed: () {

                    },)),
                  ],
                ),
                SizedBox(height: AppDimens.height20,),
                Row(
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5, top: 5, bottom: 5),
                        child: Text("Forgot password?", style: AppTheme.text13RegularWhite,),
                      ),
                      onTap: () {
                        print("test");
                      },
                      radius: AppDimens.borderRadiusBtn,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {

  }
}
