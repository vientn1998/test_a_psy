import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_dimen.dart';
import 'package:shapee_project/constant/app_theme.dart';
import 'package:shapee_project/screens/account/choose_role/choose_role_screen.dart';
import 'package:shapee_project/widgets/app_bar.dart';
import 'package:shapee_project/widgets/button.dart';
import 'package:shapee_project/widgets/text_field.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
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
                    Expanded(child: ButtonIconCustom(title: "Connect with Facebook",)),
                  ],
                ),
                SizedBox(height: AppDimens.height40,),
                Text("or", style: AppTheme.buttonIconDefault,),
                SizedBox(height: AppDimens.height40,),
                TextFieldCustom(hint: "email", textInputType: TextInputType.emailAddress, textInputAction: TextInputAction.next,),
                SizedBox(height: AppDimens.height20,),
                TextFieldCustom(hint: "password", textInputType: TextInputType.text, isPassword: true, textInputAction: TextInputAction.next),
                SizedBox(height: AppDimens.height20,),
                TextFieldCustom(hint: "username", textInputType: TextInputType.text),
                SizedBox(height: AppDimens.height50,),
                Row(
                  children: [
                    Expanded(child: ButtonCustom(title: "Create account", onPressed: () {
                      Get.to(ChooseRoleScreen());
                    },)),
                  ],
                ),
                SizedBox(height: AppDimens.height20,),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
