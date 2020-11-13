import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:provider/provider.dart';
import 'package:shapee_project/app/app_routes.dart';
import 'package:shapee_project/app/constants_enviroment.dart';
import 'package:shapee_project/app/get_it.dart';
import 'package:shapee_project/constant/app_color.dart';
import 'package:shapee_project/constant/app_constant.dart';
import 'package:shapee_project/constant/app_theme.dart';
import 'package:shapee_project/localization/app_localization.dart';
import 'package:shapee_project/providers/account/account_provider.dart';

import 'screens/account/introduction/intro_screen.dart';

void main() {
  setUpGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  Constants.setEnvironment(Environment.DEV);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Locale _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppConstant().isFlatFormAndroid = Platform.isAndroid;
    return KeyboardDismisser(
      gestures: [GestureType.onTap, GestureType.onPanUpdateDownDirection],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: AccountProvider()),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          supportedLocales: <Locale>[
            const Locale('en', 'US'),
          ],
          locale: _locale,
          localizationsDelegates: <LocalizationsDelegate<dynamic>>[
            AppLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback:
              (Locale deviceLocale, Iterable<Locale> supportedLocales) {
            for (Locale locale in supportedLocales) {
              if (locale.languageCode == deviceLocale.languageCode &&
                  locale.countryCode == deviceLocale.countryCode) {
                return deviceLocale;
              }
            }
            return supportedLocales.first;
          },
          theme: AppConstant().isFlatFormAndroid ? AppTheme.themeDataAndroid : AppTheme.themeDataIOS,
          routes: Routes.routes,
          color: AppColors.primary,
          // home: LoginScreen(),
          home: IntroScreen(),
        ),
      ),
    );
  }

}
