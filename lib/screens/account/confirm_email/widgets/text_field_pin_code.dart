import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shapee_project/utils/constant.dart';

import '../../../../constant/app_color.dart';
import '../../../../constant/app_color.dart';
import '../../../../constant/app_theme.dart';

class TextFiledPinCode extends StatefulWidget {
  @override
  _TextFiledPinCodeState createState() => _TextFiledPinCodeState();
}

class _TextFiledPinCodeState extends State<TextFiledPinCode> {

  TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: PinCodeTextField(
          appContext: context,
          length: 4,
          obscureText: true,
          obscuringCharacter: '*',
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.underline,
            borderWidth: 5,
            activeColor: AppColors.lineTextField,
            inactiveColor: AppColors.lineTextField,
            borderRadius: BorderRadius.circular(2),
            fieldWidth: (sizeDevice.width - 80) / 4,
            fieldHeight: 65
          ),
          textStyle: AppTheme.textTextFieldPinCOde,
          keyboardType: TextInputType.numberWithOptions(decimal: false),
          animationDuration: Duration(milliseconds: 100),
          backgroundColor: AppColors.primary,
          controller: _textEditingController,
          cursorColor: AppColors.white,
          autoFocus: true,
          cursorHeight: 35,
          onCompleted: (v) {
            print("Completed");
          },
          onChanged: (value) {
            setState(() {
              print('$value');
            });
          },
          beforeTextPaste: (text) {
            print("Allowing to paste $text");
            return true;
          },
        ),
      ),
    );
  }
}
