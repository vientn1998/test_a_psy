import 'package:flutter/material.dart';
import 'package:shapee_project/app/import_file_common.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_theme.dart';

class TextFieldCustomLogin extends StatefulWidget {
  TextFieldCustomLogin(
      {this.hint,
      this.textInputType = TextInputType.text,
      this.isPassword = false,
      this.textInputAction = TextInputAction.done});
  final String hint;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool isPassword;

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
  TextFieldCustom(
      {this.hint,
      this.textInputType = TextInputType.text,
      this.textInputAction = TextInputAction.done});
  final String hint;
  final TextInputType textInputType;
  final TextInputAction textInputAction;

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
  TextFieldCustomChoose(
      {this.title,
      this.textInputType = TextInputType.text,
      this.iconRight = Icons.keyboard_arrow_down,
      this.sizeIconRight = 20,
      this.onTap,
      this.textInputAction = TextInputAction.done});
  final String title;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final IconData iconRight;
  final double sizeIconRight;
  final Function onTap;

  @override
  _TextFieldCustomChooseState createState() => _TextFieldCustomChooseState();
}

class _TextFieldCustomChooseState extends State<TextFieldCustomChoose> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _textEditingController = TextEditingController(text: widget.title);
    return InkWell(
      child: Container(
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
            suffixIconConstraints: BoxConstraints(minWidth: 20, maxHeight: 20),
            suffixIcon: Icon(
              widget.iconRight,
              color: AppColors.lineTextField,
              size: widget.sizeIconRight,
            ),
          ),
        ),
      ),
      onTap: widget.onTap,
    );
  }
}
