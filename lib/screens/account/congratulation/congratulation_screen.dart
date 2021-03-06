import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/screens/home/home_screen.dart';
import 'package:shapee_project/utils/constant.dart';
import 'package:shapee_project/utils/string_utils.dart';
import 'package:shapee_project/widgets/button.dart';
import '../../../app/import_file_common.dart';

class CongratulationScreen extends StatefulWidget {
  @override
  _CongratulationScreenState createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingDefault),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: sizeDevice.height / 11,
                ),
                AspectRatio(
                  aspectRatio: 1.66,
                  child: Image.asset(
                    StringUtils.getImageUrlAssets(AppImage.air_balloon),
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      height: sizeDevice.height / 8.5,
                    ),
                    Text(
                      getTranslated(context, CONGRATULATION),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: AppColors.white),
                    ),
                    SizedBox(
                      height: sizeDevice.height / 20,
                    ),
                    Text(
                      getTranslated(context, CONGRATULATION_CONTENT_TESTER),
                      textAlign: TextAlign.center,
                      style: AppTheme.text16RegularWhite,
                    ),
                  ],
                )),
                Row(
                  children: [
                    Expanded(
                      child: ButtonCustom(
                        title: getTranslated(context, NEXT),
                        onPressed: () {
                          Get.offAll(HomeScreen());
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeDevice.height / 11,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
