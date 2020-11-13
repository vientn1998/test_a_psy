import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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

  DateTime dateOfBirthday;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: widgetAppBarText(
          title: getTranslated(context, FILL_IN_YOUR_INFORMATION),
          titleRight: getTranslated(context, NEXT),
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
                      hint: getTranslated(context, FIRST_NAME),
                      textInputAction: TextInputAction.next,
                    )),
                    SizedBox(
                      width: AppDimens.paddingDefault,
                    ),
                    Expanded(
                        child: TextFieldCustom(
                      hint: getTranslated(context, LAST_NAME),
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
                      title: getTranslated(context, GENDER),
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
                TextFieldCustomChoose(
                  title: dateOfBirthday == null ? getTranslated(context, DATE_OF_BIRTHDAY) : dateOfBirthday.formatDayOfBirthday(),
                  textInputAction: TextInputAction.next,
                  iconRight: Icons.calendar_today,
                  sizeIconRight: 16,
                  onTap: () {
                    DatePicker.showDatePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(1995, 1, 1),
                        maxTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day), onChanged: (date) {

                        }, onConfirm: (date) {
                          print('confirm $date');
                          dateOfBirthday = date;
                          setState(() {});
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldCustom(
                  hint: getTranslated(context, HOME_ADDRESS),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFieldCustomChoose(
                      title: getTranslated(context, STATE),
                      textInputAction: TextInputAction.next,
                    )),
                    SizedBox(
                      width: AppDimens.paddingDefault,
                    ),
                    Expanded(
                        child: TextFieldCustomChoose(
                      title: getTranslated(context, CITY_PROVINCE),
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
                      hint: getTranslated(context, ZIP_CODE),
                      textInputAction: TextInputAction.next,
                    )),
                    SizedBox(
                      width: AppDimens.paddingDefault,
                    ),
                    Expanded(
                        child: TextFieldCustomChoose(
                      title: getTranslated(context, COUNTRY),
                      textInputAction: TextInputAction.next,
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldCustom(
                    hint: getTranslated(context, PHONE_NUMBER),
                    textInputAction: TextInputAction.done),
                SizedBox(
                  height: 10,
                ),
                Text(
                  getTranslated(context, NOTE_FILL_IN_YOUR_INFORMATION),
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
