import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shapee_project/utils/string_utils.dart';
import '../../../../app/import_file_common.dart';

class MenuDrawerCustom extends StatelessWidget {

  MenuDrawerCustom({this.title, this.iconName, this.onPressed, this.isSelected = false});

  String title;
  String iconName;
  Function onPressed;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected ? Colors.white10 : Colors.transparent,
      child: InkWell(
        onTap: this.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.paddingDefault, vertical: 8),
          child: Row(
            children: [
              Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(
                StringUtils.getImageSVGUrlAssets(this.iconName),
                fit: BoxFit.contain,
              )),
              SizedBox(
                width: AppDimens.padding32,
              ),
              Text(
                getTranslated(context, this.title),
                style: AppTheme.text14BoldWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
