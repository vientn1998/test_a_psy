import 'package:flutter/material.dart';
import 'package:shapee_project/app/import_file_common.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_theme.dart';

import '../utils/string_utils.dart';

class TextFieldCustomLogin extends StatefulWidget {
  final String hint;
  TextInputType textInputType;
  TextInputAction textInputAction;
  bool isPassword = false;

  TextFieldCustomLogin(
      {this.hint,
      this.textInputType = TextInputType.text,
      this.isPassword = false,
      this.textInputAction = TextInputAction.done});

  @override
  _TextFieldCustomLoginState createState() => _TextFieldCustomLoginState();
}

class _TextFieldCustomLoginState extends State<TextFieldCustomLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: AppTheme.text15RegularWhite,
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.lineTextField, width: 1)),
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.lineTextField, width: 2)),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: widget.hint,
            hintStyle: AppTheme.hindTextField),
      ),
    );
  }
}

class TextFieldCustom extends StatefulWidget {
  final String hint;
  TextInputType textInputType;
  TextInputAction textInputAction;

  TextFieldCustom(
      {this.hint,
      this.textInputType = TextInputType.text,
      this.textInputAction = TextInputAction.done});

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: AppTheme.text15RegularWhite,
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.lineTextField, width: 1)),
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.lineTextField, width: 2)),
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            hintText: widget.hint,
            hintStyle: AppTheme.hindTextField),
      ),
    );
  }
}

class TextFieldCustomChoose extends StatefulWidget {
  final String title;
  TextInputType textInputType;
  TextInputAction textInputAction;

  TextFieldCustomChoose(
      {this.title,
      this.textInputType = TextInputType.text,
      this.textInputAction = TextInputAction.done});

  @override
  _TextFieldCustomChooseState createState() => _TextFieldCustomChooseState();
}

class _TextFieldCustomChooseState extends State<TextFieldCustomChoose> {

  TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController(text: widget.title);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: AppTheme.text15RegularWhite,
        keyboardType: widget.textInputType,
        enabled: false,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: widget.textInputAction,
        controller: _textEditingController,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.lineTextField, width: 1)),
            disabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.lineTextField, width: 1)),
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.lineTextField, width: 2)),
            contentPadding: EdgeInsets.only(bottom: 14),
            suffixIconConstraints:BoxConstraints(minWidth: 20, maxHeight: 20),
            suffixIcon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.lineTextField,
              size: 20,
            ),),
      ),
    );
  }
}
//Icon(Icons.keyboard_arrow_down, color: AppColors.lineTextField, size: 16,)
