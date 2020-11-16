import 'package:flutter/material.dart';
import 'package:shapee_project/app/import_file_common.dart';

class DividerDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: AppDimens.paddingDefault),
      child: Divider(height: 2, color: AppColors.lineMenu, thickness: 1,),
    );
  }
}
