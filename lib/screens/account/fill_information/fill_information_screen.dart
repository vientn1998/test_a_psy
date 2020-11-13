import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/screens/account/congratulation/congratulation_screen.dart';
import '../../../app/import_file_common.dart';
import '../../../widgets/text_field.dart';
import 'widgets/avatar_edit.dart';

class FillInformation extends StatefulWidget {
  @override
  _FillInformationState createState() => _FillInformationState();
}

class _FillInformationState extends State<FillInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: widgetAppBarText(
          title: 'Fill in your information',
          titleRight: 'Next',
          isHiddenRight: false,
          actionBack: () {
            Get.back();
          },
          actionRight: () {
            Get.to(CongratulationScreen());
          }),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingDefault),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 60,),
                AvatarEdit(),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Expanded(
                        child: TextFieldCustom(
                      hint: 'first name',
                      textInputAction: TextInputAction.next,
                    )),
                    SizedBox(
                      width: AppDimens.paddingDefault,
                    ),
                    Expanded(
                        child: TextFieldCustom(
                      hint: 'last name',
                      textInputAction: TextInputAction.next,
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFieldCustomChoose(
                      title: 'gender',
                      textInputAction: TextInputAction.next,
                    )),
                    SizedBox(
                      width: AppDimens.paddingDefault,
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldCustom(
                  hint: 'date of birthday',
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldCustom(
                  hint: 'home address',
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFieldCustomChoose(
                      title: 'state',
                      textInputAction: TextInputAction.next,
                    )),
                    SizedBox(
                      width: AppDimens.paddingDefault,
                    ),
                    Expanded(
                        child: TextFieldCustomChoose(
                      title: 'city/province',
                      textInputAction: TextInputAction.next,
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFieldCustom(
                      hint: 'ZIP code',
                      textInputAction: TextInputAction.next,
                    )),
                    SizedBox(
                      width: AppDimens.paddingDefault,
                    ),
                    Expanded(
                        child: TextFieldCustomChoose(
                      title: 'country',
                      textInputAction: TextInputAction.next,
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldCustom(
                    hint: 'phone number',
                    textInputAction: TextInputAction.done),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '*We won’t call unless there is an issue with your account. We never share your personal info with anyone!',
                  style: AppTheme.text10RegularWhite,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
