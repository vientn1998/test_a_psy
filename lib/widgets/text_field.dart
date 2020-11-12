import 'package:flutter/material.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_theme.dart';

class TextFieldCustom extends StatefulWidget {

  final String hint;
  TextInputType textInputType;
  TextInputAction textInputAction;
  bool isPassword = false;
  TextFieldCustom({this.hint, this.textInputType = TextInputType.text, this.isPassword = false, this.textInputAction = TextInputAction.done});

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: AppTheme.text15Regular,
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lineTextField, width: 1)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lineTextField, width: 2)),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: widget.hint,
            hintStyle: AppTheme.hindTextField),
      ),
    );
  }
}
