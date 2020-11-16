import 'package:flutter/material.dart';
import 'package:shapee_project/localization/app_localization.dart';

extension StringExtension on String {
  String text() {
    return (this == null || this.isEmpty) ? 'N/a' : this;
  }
}

String getTranslated(BuildContext context, String key) {
  return AppLocalization.of(context).getTranslatedValue(key);
}

String getTextTitleMenu(BuildContext context, int index) {
  switch(index) {
    case 0:
      return getTranslated(context, PROFILE);
      break;
    case 1:
      return getTranslated(context, MY_STATS);
      break;
    case 2:
      return getTranslated(context, GET_TESTED);
      break;
    case 3:
      return getTranslated(context, SCHEDULER);
      break;
    case 4:
      return getTranslated(context, ARTICLES);
      break;
    case 5:
      return getTranslated(context, NEWS);
      break;
    case 6:
      return getTranslated(context, NOTIFICATION_SETTINGS);
      break;
    case 7:
      return getTranslated(context, CUSTOMER_SUPPORT);
      break;
    case 8:
      return getTranslated(context, TERMS_OF_AGREEMENT);
      break;
    case 9:
      return getTranslated(context, INSTRUCTIONS);
      break;
    default:
      return getTranslated(context, PROFILE);
      break;
  }
}

/*==========================INTRO========================== */
const String INTRO1 = 'intro1';
const String INTRO2 = 'intro2';
const String INTRO3 = 'intro3';
const String INTRO4 = 'intro4';
const String DONE = 'done';
const String LOGIN = 'login';
const String GET_STARTED = 'get_started';
/*==========================LOGIN========================== */
const String LOGIN_WITH_FB = 'login_with_fb';
const String SIGN_IN = 'sign_in';
const String EMAIL = 'email';
const String PASSWORD = 'password';
const String FORGOT_PASSWORD = 'forgot_password';
const String OR = 'or';
/*==========================REGISTER========================== */
const String CREATE_ACCOUNT = 'create_account';
const String CONNECT_WITH_FB = 'connect_with_fb';
const String USERNAME = 'username';
/*==========================ROLE========================== */
const String CHOOSE_YOUR_ROLE = 'choose_your_role';
const String READER = 'reader';
const String TESTER = 'tester';
const String PRESENT_CHOOSE_ROLE = 'present_choose_role';
/*==========================ENTER-EMAIL========================== */
const String ENTER_EMAIL = 'enter_email';
const String NEXT = 'next';
const String SENT_PASSCODE_YOUR_EMAIL = 'sent_passcode_your_email';
const String ENTER_YOUR_EMAIL = 'enter_your_email';
/*==========================ENTER-EMAIL========================== */
const String ENTER = 'enter';
/*==========================CONFIRM-EMAIL========================== */
const String CONFIRM = 'confirm';
const String CONFIRM_EMAIL = 'confirm_email';
const String INCORRECT_PASSCODE = 'incorrect_passcode';
const String DID_NOT_GET_SEND_AGAIN = 'did_not_get_send_again';
/*==========================NEW-PASSWORD========================== */
const String NEW_PASSWORD = 'new_password';
const String ENTER_NEW_PASSWORD = 'enter_new_password';
const String PASSWORD_REQUIRED = 'password_required';
/*==========================CONFIRM-PASSWORD========================== */
const String CONFIRM_PASSWORD = 'confirm_password';
const String CONFIRM_NEW_PASSWORD = 'confirm_new_password';
const String TYPE_PASSWORD_AGAIN = 'type_password_again';
/*==========================FILL-YOUR-INFO========================== */
const String FILL_IN_YOUR_INFORMATION = 'fill_in_your_information';
const String FIRST_NAME = 'first_name';
const String LAST_NAME = 'last_name';
const String GENDER = 'gender';
const String DATE_OF_BIRTHDAY = 'date_of_birthday';
const String HOME_ADDRESS = 'home_address';
const String STATE = 'state';
const String CITY_PROVINCE = 'city_province';
const String ZIP_CODE = 'zip_code';
const String COUNTRY = 'country';
const String PHONE_NUMBER = 'phone_number';
const String NOTE_FILL_IN_YOUR_INFORMATION = 'note_fill_in_your_information';
/*==========================CONGRATULATION========================== */
const String CONGRATULATION = 'congratulation';
const String CONGRATULATION_CONTENT_TESTER = 'congratulation_content_tester';
/*==========================MENU========================== */
const String PROFILE = 'profile';
const String MY_STATS = 'my_stats';
const String GET_TESTED = 'get_tested';
const String SCHEDULER = 'scheduler';
const String ARTICLES = 'articles';
const String NEWS = 'news';
const String NOTIFICATION_SETTINGS = 'notification_settings';
const String CUSTOMER_SUPPORT = 'customer_support';
const String TERMS_OF_AGREEMENT = 'terms_of_agreement';
const String INSTRUCTIONS = 'instructions';
const String COPYRIGHT_TEST_A_PSYCHIC = 'copyright_test_a_psychic';
