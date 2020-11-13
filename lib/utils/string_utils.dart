class StringUtils {
  static final StringUtils _appConstant = StringUtils._internal();

  factory StringUtils() {
    return _appConstant;
  }

  StringUtils._internal();
  static String getUrlAssets(String image) => "assets/images/$image.png";
}
