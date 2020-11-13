class AppImage {

  static final AppImage _appConstant = AppImage._internal();

  factory AppImage() {
    return _appConstant;
  }

  AppImage._internal();

  static const String image1 = 'image1';
  static const String image2 = 'image2';
  static const String image3 = 'image3';
  static const String image4 = 'image4';
  static const String background_welcome = 'background_welcome';
  static const String fb_btn = 'fb_btn';
  static const String avatar_default = 'avatar_default';
  static const String air_balloon = 'air_balloon';
}