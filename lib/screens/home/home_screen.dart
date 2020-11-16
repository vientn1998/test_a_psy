import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/app/import_file_common.dart';
import 'package:shapee_project/models/keyvalue_obj.dart';
import 'package:shapee_project/screens/articles/articles_home_screen.dart';
import 'package:shapee_project/screens/customer_support/customer_support_home_screen.dart';
import 'package:shapee_project/screens/get_tested/get_testded_home_screen.dart';
import 'package:shapee_project/screens/instructions/instructions_home_screen.dart';
import 'package:shapee_project/screens/my_stats/my_stats_home_screen.dart';
import 'package:shapee_project/screens/news/news_home_screen.dart';
import 'package:shapee_project/screens/notification_settings/notification_setting_home_screen.dart';
import 'package:shapee_project/screens/profile/profile_home_screen.dart';
import 'package:shapee_project/screens/schedule/schedule_home_screen.dart';
import 'package:shapee_project/screens/terms_agreement/terms_agreement_home_screen.dart';

import 'widgets/menu/divider_drawer.dart';
import 'widgets/menu/menu_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  List<Widget> _listMenuWidget = [];

  @override
  void initState() {
    _listMenuWidget = <Widget>[
      ProfileHomeScreen(),
      ScheduleHomeScreen(),
      GetTestedHomeScreen(),
      MyStatsHomeScreen(),
      ArticlesHomeScreen(),
      NewsHomeScreen(),
      NotificationSettingHomeScreen(),
      CustomerSupportHomeScreen(),
      TermsAgreementHomeScreen(),
      InstructionHomeScreen(),
    ];
    super.initState();
  }

  void _onTappedMenu({int index}) {
    setState(() {
      _selectedIndex = index;
      Get.back();
    });
  }

  @override
  Widget build(BuildContext context) {
    var safePadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          getTextTitleMenu(context, _selectedIndex),
          style: AppTheme.text20Bold,
        ),
        centerTitle: false,
        backgroundColor: AppColors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        actions: [
          InkWell(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.paddingDefault),
                child: Text(
                  getTranslated(context, NEXT),
                  style: AppTheme.text16Bold,
                ),
              ),
            ),
            onTap: () {

            },
          )
        ],
      ),
      body: Center(
        child: IndexedStack(
          index: _selectedIndex,
          children: _listMenuWidget,
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: AppColors.primary,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 24),
            children: <Widget>[
              SizedBox(height: safePadding,),
              MenuDrawerCustom(
                title: PROFILE,
                iconName: AppImage.menu_profile,
                isSelected: 0 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 0);
                },
              ),
              MenuDrawerCustom(
                title: MY_STATS,
                iconName: AppImage.menu_support,
                isSelected: 1 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 1);
                },
              ),
              MenuDrawerCustom(
                title: GET_TESTED,
                iconName: AppImage.menu_get_tested,
                isSelected: 2 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 2);
                },
              ),
              MenuDrawerCustom(
                title: SCHEDULER,
                iconName: AppImage.menu_scheduler,
                isSelected: 3 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 3);
                },
              ),
              DividerDrawer(),
              MenuDrawerCustom(
                title: ARTICLES,
                iconName: AppImage.menu_articles,
                isSelected: 4 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 4);
                },
              ),
              MenuDrawerCustom(
                title: NEWS,
                iconName: AppImage.menu_news,
                isSelected: 5 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 5);
                },
              ),
              DividerDrawer(),
              MenuDrawerCustom(
                title: NOTIFICATION_SETTINGS,
                iconName: AppImage.menu_setting,
                isSelected: 6 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 6);
                },
              ),
              MenuDrawerCustom(
                title: CUSTOMER_SUPPORT,
                iconName: AppImage.menu_support,
                isSelected: 7 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 7);
                },
              ),
              MenuDrawerCustom(
                title: TERMS_OF_AGREEMENT,
                iconName: AppImage.menu_term,
                isSelected: 8 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 8);
                },
              ),
              MenuDrawerCustom(
                title: INSTRUCTIONS,
                iconName: AppImage.menu_instructions,
                isSelected: 9 == _selectedIndex,
                onPressed: () {
                  _onTappedMenu(index: 9);
                },
              ),
              SizedBox(height: 30,),
              Text(
                getTranslated(context, COPYRIGHT_TEST_A_PSYCHIC),
                style: AppTheme.text14RegularWhite,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }


}
