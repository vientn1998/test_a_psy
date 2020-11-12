import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:shapee_project/data/network/account/account_network.dart';
import 'package:shapee_project/models/api_public.dart';

class AccountProvider with ChangeNotifier{

  final StreamController<dynamic> _loginController = StreamController<dynamic>();
  Stream<dynamic> get loginStream => _loginController.stream;

  Future<bool> loginEmailPassword(String email, String password) async{
    if (email.isEmpty || password.isEmpty) {
      _loginController.addError("validate");
      return false;
    }
    await AccountNetwork().loginEmailPassword(email, password).then((ApiPublic value) {
      if (value.status) {
        return true;
      } else {
        _loginController.addError(value.status);
        return false;
      }
    });
    return false;
  }
}