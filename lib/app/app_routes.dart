import 'package:flutter/material.dart';
import 'package:shapee_project/screens/account/login/login_screen.dart';

class Routes {
  Routes._();

  static const String login = '/login';
  static const String home = '/home';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    login: (BuildContext context) => LoginScreen(),
  };
}
