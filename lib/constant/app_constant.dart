
class AppConstant {

  static final AppConstant _appConstant = AppConstant._internal();

  factory AppConstant() {
    return _appConstant;
  }

  AppConstant._internal();

  bool isFlatFormAndroid = false;
}