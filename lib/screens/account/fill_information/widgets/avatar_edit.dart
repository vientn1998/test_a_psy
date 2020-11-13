import 'package:flutter/material.dart';
import 'package:shapee_project/utils/constant.dart';
import 'package:shapee_project/utils/string_utils.dart';
import '../../../../app/import_file_common.dart';

class AvatarEdit extends StatefulWidget {
  @override
  _AvatarEditState createState() => _AvatarEditState();
}

class _AvatarEditState extends State<AvatarEdit> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDimens.paddingDefault),
            child: Container(
                child: Image.asset(
                  StringUtils.getUrlAssets('avatar_default'),
                  width: sizeDevice.width / 2.9,
                  height: sizeDevice.height / 6,
                  fit: BoxFit.fill,
                )),
          ),
          _widgetBtnEditAvatar(),
        ],
      ),
    );
  }

  _widgetBtnEditAvatar() {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundBtnEditAvatar,
          borderRadius: BorderRadius.circular(6),
        ),
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Icon(
              Icons.edit,
              color: AppColors.white,
            ),
          ),
          onTap: () {
            print('edit');
          },
        ),
      ),
      right: 0,
      top: 35,
    );
  }
}