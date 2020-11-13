import 'package:flutter/material.dart';

import '../../../../constant/app_color.dart';
import '../../../../constant/app_theme.dart';

class TextFileEmailCustom extends StatefulWidget {

  TextFileEmailCustom({this.isPassword = false, this.hint = 'enter'});
  bool isPassword;
  String hint;

  @override
  _TextFileEmailCustomState createState() => _TextFileEmailCustomState();
}

class _TextFileEmailCustomState extends State<TextFileEmailCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: AppTheme.text26MediumWhite,
        keyboardType: widget.isPassword ? TextInputType.text : TextInputType.emailAddress,
        obscureText: widget.isPassword,
        obscuringCharacter: '*',
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lineTextField, width: 1)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lineTextField, width: 2)),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: widget.hint,
            hintStyle: AppTheme.text26MediumHint),
      ),
    );
  }
}
