import 'package:after_layout/after_layout.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/constant/app_constant.dart';
import 'package:shapee_project/models/keyvalue_obj.dart';
import 'package:shapee_project/screens/account/welcome/welcome_screen.dart';
import 'package:shapee_project/utils/constant.dart';
import 'package:shapee_project/utils/string_utils.dart';
import '../../../app/import_file_common.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> with AfterLayoutMixin {
  List<KeyValueObj> slides = new List();
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  bool isFirstBuild = true;
  @override
  void initState() {
    if (!AppConstant().isFlatFormAndroid) {
      AppTheme.setUpStatusBar();
    }
    slides = [];
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void afterFirstLayout(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    sizeDevice = MediaQuery.of(context).size;
    if (isFirstBuild) {
      slides.addAll([
        KeyValueObj(
            value: getTranslated(context, INTRO1),
            pathImage: StringUtils.getUrlAssets(AppImage.image1),
            height: 189,
            width: 284),
        KeyValueObj(
            value: getTranslated(context, INTRO2),
            pathImage: StringUtils.getUrlAssets(AppImage.image2),
            height: 282,
            width: 275),
        KeyValueObj(
            value: getTranslated(context, INTRO3),
            pathImage: StringUtils.getUrlAssets(AppImage.image3),
            height: 312,
            width: 312),
        KeyValueObj(
            value: getTranslated(context, INTRO4),
            pathImage: StringUtils.getUrlAssets(AppImage.image4),
            height: 232,
            width: 312),
      ]);
      isFirstBuild = false;
    }
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: <Widget>[
          _buildPageView(),
          _buildCircleIndicator(),
          _buildBtnDone(context)
        ],
      ),
    );
  }

  _buildBtnDone(BuildContext context) {
    return Positioned(
      right: 12,
      top: 40,
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              _currentPageNotifier.value == 3
                  ? getTranslated(context, DONE)
                  : "",
              style: AppTheme.text15Bold,
            ),
          ),
        ),
        borderRadius: BorderRadius.circular(4),
        onTap: () {
          Get.off(WelcomeScreen());
        },
      ),
    );
  }

  _buildPageView() {
    return Container(
      height: double.infinity,
      child: PageView.builder(
          itemCount: slides.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            final item = slides[index];
            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                Image.asset(
                  item.pathImage,
                  height: item.height,
                  width: item.width,
                ),
                SizedBox(
                  height: sizeDevice.height / 6,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppDimens.paddingDefault),
                  child: Text(
                    item.value,
                    style: AppTheme.textDesIntro,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: sizeDevice.height / 5,
                )
              ],
            );
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
            setState(() {});
            // _currentPageNotifier.notifyListeners();
          }),
    );
  }

  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: sizeDevice.height / 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DotsIndicator(
          dotsCount: slides.length ?? 0,
          position: _currentPageNotifier.value.toDouble(),
          decorator: DotsDecorator(
              color: AppColors.primary, // Inactive color
              activeColor: Colors.white,
              size: const Size.square(11.0),
              activeSize: const Size.square(11.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.5),
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,
                  )),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.5),
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ))),
        ),
      ),
    );
  }
}
