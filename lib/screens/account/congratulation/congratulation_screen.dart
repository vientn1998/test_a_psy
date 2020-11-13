import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingDefault),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: sizeDevice.height / 11,),
                Image.asset(StringUtils.getUrlAssets('air_balloon'), width: sizeDevice.width - 32, height: sizeDevice.height / 3.4, fit: BoxFit.fill,),
                Expanded(child:Column(

                  children: [
                    SizedBox(height: sizeDevice.height / 8.5,),
                    Text(
                      'CONGRATULATIONS!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: FontFamily.bold,
                          fontSize: 26,
                          color: AppColors.white),
                    ),
                    SizedBox(height: sizeDevice.height / 20,),
                    Text('You are now a tester. That means you can get readings from the advisors and rate them. Click "Next" to start.',
                      textAlign: TextAlign.center,
                      style: AppTheme.text16RegularWhite,),

                  ],
                )),
                Row(
                  children: [
                    Expanded(
                      child: ButtonCustom(title: 'Next',onPressed: () {

                      },),
                    ),
                  ],
                ),
                SizedBox(height: sizeDevice.height / 11,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}