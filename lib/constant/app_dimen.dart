class AppDimens {
  static final AppDimens _appConstant = AppDimens._internal();

  factory AppDimens() {
    return _appConstant;
  }

  AppDimens._internal();
  static const double paddingDefault = 16.0;
  static const double padding32 = 32.0;
  static const double height10 = 10.0;
  static const double height20 = 20.0;
  static const double height40 = 40.0;
  static const double height50 = 50.0;
  static const double heightButton = 55.0;
  static const double borderRadiusBtn = 4.0;
}