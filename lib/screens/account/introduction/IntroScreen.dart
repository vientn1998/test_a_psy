import 'package:after_layout/after_layout.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_dimen.dart';
import 'package:shapee_project/constant/app_image.dart';
import 'package:shapee_project/constant/app_theme.dart';
import 'package:shapee_project/models/keyvalue_obj.dart';
import 'package:shapee_project/screens/account/welcome/welcome_screen.dart';
import 'package:shapee_project/utils/constant.dart';
import 'package:shapee_project/utils/string_utils.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> with AfterLayoutMixin{

  List<KeyValueObj> slides = new List();
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    AppTheme.setUpStatusBar();
    super.initState();
    slides.add(
      new KeyValueObj(
        value: 'Test a Psychic’s intuitive “testing” platform allows both Clients & Reader/Advisors to interact with each other in order to test the Reader’s abilities.',
        pathImage: StringUtils.getUrlAssets(AppImage.image1),
        height: 189,
        width: 284
      ),
    );
    slides.add(
      new KeyValueObj(
          value: 'Readings can take place in any of 4 different platforms of your choice: CHAT, PHONE, EMAIL or SMS.',
          pathImage: StringUtils.getUrlAssets(AppImage.image2),
          height: 282,
          width: 275
      ),
    );
    slides.add(
      new KeyValueObj(
          value: 'Test a Psychic’s intuitive “testing” platform allows both Clients & Reader/Advisors to interact with each other in order to test the Reader’s abilities.',
          pathImage: StringUtils.getUrlAssets(AppImage.image3),
          height: 312,
          width: 312
      ),
    );
    slides.add(
      new KeyValueObj(
          value: 'With a variety of reading methods: Clairvoyance, Tarot, Medium, Astrology, Life Coaching etc.',
          pathImage: StringUtils.getUrlAssets(AppImage.image4),
          height: 232,
          width: 312
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {

  }

  @override
  Widget build(BuildContext context) {
    sizeDevice = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: <Widget>[
          _buildPageView(),
          _buildCircleIndicator(),
          _buildBtnDone()
        ],
      ),
    );
  }

  _buildBtnDone() {
    return Positioned(
      right: 12,
      top: 40,
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              _currentPageNotifier.value == 3 ? "Done" : "", style: AppTheme.textDesIntro,
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
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingDefault),
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
          dotsCount: slides.length,
          position: _currentPageNotifier.value.toDouble(),
          decorator: DotsDecorator(
              color: AppColors.primary, // Inactive color
              activeColor: Colors.white,
              size: const Size.square(11.0),
              activeSize: const Size.square(11.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.5), side: BorderSide(
                color: Colors.white,
                width: 1,)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.5),
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,))),
        ),
      ),
    );
  }
}
